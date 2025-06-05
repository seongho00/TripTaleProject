package com.example.demo.service;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.TripLocationRepository;
import com.example.demo.vo.TripLocation;

@Service
public class TripLocationService {

	@Autowired
	private TripLocationRepository tripLocationRepository;

	public TripLocationService(TripLocationRepository tripLocationRepository) {
		this.tripLocationRepository = tripLocationRepository;
	}

	private WebDriver driver;

	public void process(String keyword) {
		keyword = "대전을지병원";
		String url = "https://map.nave" + "r.com/v5/search/" + keyword;
		// 크롬 드라이버 세팅 (드라이버 설치 경로 입력)
		System.setProperty("webdriver.chrome.driver", "C:\\LSH_spring_work\\chromedriver-win64\\chromedriver.exe");

		ChromeOptions options = new ChromeOptions();
		options.addArguments("--remote-allow-origins=*");

		// 브라우저 선택
		driver = new ChromeDriver(options);
		driver.get("https://www.google.com");

		getDataList(url);

		// 탭 닫기
		driver.close();
		// 브라우저 닫기
		driver.quit();
	}

	// 데이터 가져오기
	private void getDataList(String url) {

		// (1) 브라우저에서 url로 이동한다.
		driver.get(url);
		// 브라우저 로딩될 때까지 잠시 기다린다.
		driver.manage().timeouts().implicitlyWait(Duration.ofMillis(1000));

		// (2) 검색결과 iframe으로 frame을 바꾼다.
		driver.switchTo().frame(driver.findElement(By.cssSelector("iframe#searchIframe")));

		// 검색 결과 장소 목록을 elements에 담는다.
		try {
			List<WebElement> elements = driver.findElements(By.cssSelector(".ApCpt>.place_bluelink"));
			elements.get(0).click();
		} catch (Exception e) {
			System.out.println("클릭 못함 ㅇㅇ");
		}

		// (3) 첫번째 검색결과를 클릭한다.

		// 요소가 로드될 때까지 기다린다.
		driver.manage().timeouts().implicitlyWait(Duration.ofMillis(500));
		// 현재 프레임에서 상위 프레임으로 이동한다.
		driver.switchTo().defaultContent();

		driver.manage().timeouts().implicitlyWait(Duration.ofMillis(3000));
		// (4) 상세정보가 나오는 프레임으로 이동한다.
		driver.switchTo().frame(driver.findElement(By.cssSelector("iframe#entryIframe")));

		// (5) 상세정보 프레임에서 주소 정보가 들어있는 곳으로 이동한다.
		List<WebElement> placeSectionContents = driver.findElements(By.cssSelector(".place_section_content"));
		WebElement homeElement = placeSectionContents.get(0);

		String schedule = "";
		// "일정" 버튼 요소를 찾아 클릭한다.
		try {
			WebElement scheduleButton = driver.findElement(By.className("vI8SM"));
			scheduleButton.click();

			List<WebElement> scheduleInfos = driver.findElements(By.className("A_cdD"));

			for (WebElement scheduleInfo : scheduleInfos) {
				schedule += scheduleInfo.getText() + "\n";
			}
		} catch (Exception e) {
			System.out.println("일정 정보 없음");
			schedule = "일정 정보 없음";
		}

		// (6) "주소" 버튼 요소를 찾아 클릭한다.
		WebElement addressButton = homeElement.findElement(By.className("LDgIH"));
		addressButton.click();

		// (7) "도로명"과 "지번" 정보가 들어있는 div 요소를 찾아서, 해당 정보를 가져온다.
		WebElement addressDiv = driver.findElement(By.className("Y31Sf"));

		List<WebElement> addressInfos = addressDiv.findElements(By.className("nQ7Lh"));
		String address = "";
		for (WebElement addressInfo : addressInfos) {
			WebElement addressType = addressInfo.findElement(By.tagName("span"));
			address = addressInfo.getText().replace(addressType.getText(), "").trim();
			System.out.println(address);
		}

		// "이름" 정보가 들어있는 div 요소 찾기
		WebElement titleDiv = driver.findElement(By.className("LylZZ"));

		// title div 아래에 있는 span 태그들을 가져와 직접적인 정보 얻기
		List<WebElement> titleInfos = titleDiv.findElements(By.tagName("span"));
		String title = titleInfos.get(0).getText();
		String number = "";
		try {
			// 전화번호 정보가 담겨있는 span 요소 찾기
			WebElement numberSpan = driver.findElement(By.className("xlx7Q"));
			number = numberSpan.getText();

		} catch (Exception e) {
			System.out.println(e + "번호 정보 없음");
			number = "번호 정보 없음";
		}

		// 별점 정보가 담겨있는 span 요소찾기
		WebElement starSpan = driver.findElement(By.className("LXIwF"));
		WebElement starType = starSpan.findElement(By.tagName("span"));
		String star = starSpan.getText().replace(starType.getText(), "").trim();

		// 소개글 정보 span 요소 찾기
		List<WebElement> profileSpans = driver.findElements(By.className("veBoZ"));
		String profile = "";
		try {
			for (WebElement profileSpan : profileSpans) {
				String text = profileSpan.getText();
				if (text.equals("정보")) {
					profileSpan.click();
					profile = driver.findElement(By.className("T8RFa")).getText();
				}
			}
		} catch (Exception e) {
			System.out.println(e + "소개글 정보 없음");
			profile = "소개글 정보 없음";
		}

		tripLocationRepository.insertData(title, profile, address, number, schedule, star);
	}

}
