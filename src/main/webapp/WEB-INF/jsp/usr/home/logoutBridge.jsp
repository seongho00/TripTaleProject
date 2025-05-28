<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<title>로그아웃 중...</title>
<script>
	// 로그아웃 후 메인 페이지로 이동
	setTimeout(function() {
		window.location.href = "/usr/home/main";
	}, 1000); // 약간의 지연을 주는 게 좋음
</script>

<p>로그아웃 처리 중입니다. 잠시만 기다려 주세요...</p>
<iframe src="https://nid.naver.com/nidlogin.logout" style="display:none;"></iframe>

<%@ include file="../common/foot.jspf"%>