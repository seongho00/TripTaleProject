<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<c:set var="pageTitle" value="관광사진" />
<%@ include file="../common/head.jspf"%>
<style>
img {
	width: 300px;
	height: 200px;
	object-fit: cover;
	border-radius: 12px;
}
</style>

<div id="imageContainer"
	style="display: flex; flex-wrap: wrap; gap: 20px;"><img id="서울"></img>서울
	<img id="인천"></img>인천 <img id="대전"></img> 대전 <img id="대구"></img> 대구 <img
		id="광주"></img> 광주 <img id="부산"></img> 부산 <img id="울산"></img> 울산 <img
		id="세종"></img>세종 <img id="경기"></img> 경기 <img id="강원"></img> 강원 <img
		id="충북"></img> 충북 <img id="충남"></img> 충남 <img id="경북"></img> 경북 <img
		id="경남"
		src="http://tong.visitkorea.or.kr/cms/resource/53/3083353_image2_1.jpg"></img>
	경남 <img id="전북"></img>전북 <img id="전남"></img>전남 <img id="제주"></img>제주</div>




<script>
	const API_KEY = 'CtMWbR%2BmYCIwYQmPYdFuMiP4LsJ6aVV3CcbyZUXI5bGiblyS1OilOVAYopA9VxwIcRyQ7pT%2FADS7FzuMVs3uEw%3D%3D'; // Encoding된 키
	
	const cityTourList = [
		  { city: "서울", place: "경복궁", contentId: 126508 },
		  { city: "인천", place: "송도센트럴파크", contentId: 2465107 },
		  { city: "대전", place: "한밭수목원", contentId: 741658 },
		  { city: "대구", place: "앞산공원", contentId: 126132 },
		  { city: "광주", place: "국립아시아문화전당", contentId: 2009775 },
		  { city: "부산", place: "해운대해수욕장", contentId: 126081 },
		  { city: "울산", place: "대왕암공원", contentId: 127515 },
		  { city: "세종", place: "세종호수공원", contentId: 1946955 },
		  { city: "경기", place: "에버랜드", contentId: 127797 },
		  { city: "강원", place: "설악산국립공원", contentId: 125584 },
		  { city: "충북", place: "청남대", contentId: 127916 },
		  { city: "충남", place: "대천해수욕장", contentId: 2734212 },
		  { city: "경북", place: "불국사", contentId: 1603100 },
		  { city: "전북", place: "전주한옥마을", contentId: 3358892 },
		  { city: "전남", place: "순천만국가정원", contentId: 1919548 },
		  { city: "제주", place: "성산일출봉", contentId: 126435 }
		
		  // 필요하면 더 추가 가능
		];
	
	async function getAirData() {
		const container = document.getElementById("imageContainer");
	 	for (const item of cityTourList) {
			

			 const url = 'https://apis.data.go.kr/B551011/KorService2/detailImage2?'
					+ 'serviceKey=' + API_KEY + '&pageNo=1&numOfRows=10'
					+ '&MobileOS=ETC&MobileApp=AppTest'
					+ '&_type=json&contentId=' + item.contentId ;
			try {
				const response = await fetch(url);
				
				if (!response.ok) {
					throw new Error(`HTTP 오류! 상태 코드: ${response.status}`);
				}
				
				const data = await
				response.json();
				console.log("관광사진 :", data.response.body);
				console
						.log("관광사진 :",
								data.response.body.items.item[0].originimgurl);
				
				 const images = data.response.body.items?.item;
				 
			      const imageUrl = (Array.isArray(images) && images.length > 0)
			        ? images[0].originimgurl
			        : "https://via.placeholder.com/300x200?text=No+Image";
			      
			        const imageElement = document.getElementById(item.city); // 예: item.city = "서울"
			        if (imageElement) {
			          imageElement.src = imageUrl;
			        }
			        
			} catch (e) {
				console.error("API 호출 실패:", e);
			}
		  } 
	}
	getAirData();
</script>




<%@ include file="../common/foot.jspf"%>