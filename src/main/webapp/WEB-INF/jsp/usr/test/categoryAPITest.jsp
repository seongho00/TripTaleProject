<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="관광사진" />
<%@ include file="../common/head.jspf"%>



<script>
	const API_KEY = 'CtMWbR%2BmYCIwYQmPYdFuMiP4LsJ6aVV3CcbyZUXI5bGiblyS1OilOVAYopA9VxwIcRyQ7pT%2FADS7FzuMVs3uEw%3D%3D'; // Encoding된 키

	async function getAirData() {
		const url = 'https://apis.data.go.kr/B551011/KorService2/areaBasedList2'
				+ '?serviceKey='
				+ API_KEY
				+ '&_type=json&pageNo=1&numOfRows=10&MobileOS=Test&MobileApp=AppTest'
				+ '&cat1=C01&contentTypeId=25&areaCode=1';

		try {
			const response = await
			fetch(url);
			if (!response.ok) {
				throw new Error(`HTTP 오류! 상태 코드: ${response.status}`);
			}
			const data = await
			response.json();
			console.log("data :", data);

		} catch (e) {
			console.error("API 호출 실패:", e);
		}
	}
	getAirData();
</script>


<%@ include file="../common/foot.jspf"%>