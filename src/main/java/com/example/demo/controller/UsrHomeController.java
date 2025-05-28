package com.example.demo.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.service.ArticleService;
import com.example.demo.service.KakaoOAuthService;
import com.example.demo.vo.Article;
import com.example.demo.vo.NaverResponse;
import com.example.demo.vo.NaverResponse.NaverUserDetail;
import com.example.demo.vo.Rq;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UsrHomeController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	private ArticleService articleService;
	@Autowired
	private KakaoOAuthService kakaoOAuthService;

	Rq rq;

	UsrHomeController(TripTaleProjectApplication tripTaleProjectApplication) {
		this.tripTaleProjectApplication = tripTaleProjectApplication;
		this.rq = new Rq();
	}

	@RequestMapping("usr/home/main")
	public String main(Model model) {

		Article article = articleService.getArticle();

		model.addAttribute("article", article);
		return "usr/home/main";
	}

	@RequestMapping("usr/test/test")
	public String test(Model model) {

		return "usr/test/test";
	}

	@RequestMapping("usr/test/kakaoTest")
	public String kakoDeveloperTest(Model model) {
		String clientId = rq.getClientId();

		String RedirectUri = "http://localhost:8080/oauth/kakao/callback";

		model.addAttribute("clientId", clientId);
		model.addAttribute("RedirectUri", RedirectUri);

		return "usr/test/kakaoDeveloperTest";
	}

	@RequestMapping("oauth/kakao/callback")
	public String kakoDeveloperTest(String code) {
		String clientId = rq.getClientId();
		String clientSecret = rq.getClientSecret();
		
		String accessToken = kakaoOAuthService.requestAccessToken(clientId, code, clientSecret);
		
		kakaoOAuthService.getUserInfo(accessToken);

		return "usr/home/main";
	}

	@RequestMapping("usr/test/test2")
	@ResponseBody
	public String test2(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
		String clientId = "5lIc5HiT6OdtWBZYb5k5";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "OhDWVNoA76";// 애플리케이션 클라이언트 시크릿값";
		String code = request.getParameter("code");
		String state = request.getParameter("state");
		String redirectURI = URLEncoder.encode("http://localhost:8080/usr/home/main", "UTF-8");
		String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code" + "&client_id=" + clientId
				+ "&client_secret=" + clientSecret + "&redirect_uri=" + redirectURI + "&code=" + code + "&state="
				+ state;
		String accessToken = "";
		String refresh_token = "";
		String tokenType = "";
		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			int responseCode = con.getResponseCode();

			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			String res = "";

			while ((inputLine = br.readLine()) != null) {
				res = inputLine;
			}
			br.close();
			if (responseCode == 200) {

				String[] str = res.split(",");
				accessToken = str[0].substring(17, str[0].length() - 1);
				tokenType = str[2].substring(14, str[2].length() - 1);
				String response = test3(accessToken, tokenType);
				ObjectMapper mapper = new ObjectMapper();
				System.out.println(response);
				NaverResponse naverUserInfo = mapper.readValue(response, NaverResponse.class);
				System.out.println(naverUserInfo);
				NaverUserDetail naverUserDetail = mapper.readValue(naverUserInfo.getResponse().toString(),
						NaverUserDetail.class);
				System.out.println(naverUserDetail);
			}

		} catch (Exception e) {
			// Exception 로깅
		}

		return "<script>location.replace('../test/test3?accessToken=" + accessToken + "&tokenType= " + tokenType
				+ "')</script>";
	}

	@RequestMapping("usr/test/test3")
	public String test3(String accessToken, String tokenType) {
		try {

			URL url = new URL("https://openapi.naver.com/v1/nid/me");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("Authorization", tokenType + " " + accessToken);

			int responseCode = con.getResponseCode();
			BufferedReader br;

			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}

			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}

			br.close();

			return response.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
