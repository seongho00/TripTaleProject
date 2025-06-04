<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="관광사진" />
<%@ include file="../common/head.jspf"%>



<script>
	function coordToAddress (mapX, mapY){
		$.ajax({
		      url: "/usr/test/coordToAddress",
		      method: "POST",
		      data: {
		    	mapX: mapX,
		    	mapY: mapY
		      },
		      success: function(response) {
		        console.log("✅ 서버 응답:", response);
		      },
		      error: function(xhr, status, error) {
		        console.error("❌ 요청 실패:", status, error);
		      }
		    });
	}
	const API_KEY = 'CtMWbR%2BmYCIwYQmPYdFuMiP4LsJ6aVV3CcbyZUXI5bGiblyS1OilOVAYopA9VxwIcRyQ7pT%2FADS7FzuMVs3uEw%3D%3D'; // Encoding된 키

	async function getAirData() {
		const url = 'https://apis.data.go.kr/B551011/KorService2/areaBasedList2'
				+ '?serviceKey='
				+ API_KEY
				+ '&_type=json&pageNo=1&numOfRows=52&MobileOS=Test&MobileApp=AppTest'
				+ '&cat1=C01&contentTypeId=25&areaCode=1';

		try {
			const response = await
			fetch(url);
			if (!response.ok) {
				throw new Error(`HTTP 오류! 상태 코드: ${response.status}`);
			}
			const data = await
			response.json();


			const datas = data.response.body.items.item;
			datas.forEach((item, index) => {
					coordToAddress(item.mapx, item.mapy);
				  });

		} catch (e) {
			console.error("API 호출 실패:", e);
		}
	}
	getAirData();
</script>


<%@ include file="../common/foot.jspf"%>