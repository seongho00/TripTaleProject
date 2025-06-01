<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
.label {
	background: white;
	padding: 4px 8px;
	border: 1px solid #333;
	border-radius: 4px;
	font-size: 12px;
	white-space: nowrap;
	pointer-events: auto; /* 이벤트 받도록 설정 */
	cursor: pointer;
}
</style>
<body>

	<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width: 100%; height: 100vh;"></div>

	<script src="/resource/map.js"></script>

</body>
</html>
