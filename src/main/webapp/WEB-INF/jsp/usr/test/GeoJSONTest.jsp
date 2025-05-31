<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=24d1b6883d7e9adfaf4ff1844fa92b7a&autoload=false&libraries=services"></script>
</head>
<style>
.label {
	background: white;
	padding: 4px 8px;
	border: 1px solid #333;
	border-radius: 4px;
	font-size: 12px;
	white-space: nowrap;
}
</style>
<body>

	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width: 100%; height: 100vh;"></div>

	<script src="/resource/map.js"></script>

</body>
</html>
