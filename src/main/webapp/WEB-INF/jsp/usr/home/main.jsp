<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>

<h1>메인 페이지</h1>

id = ${article.id } regDate = ${article.regDate } updateDate = ${article.updateDate } 제목 = ${article.title } 내용 =
${article.body }


<%@ include file="../common/foot.jspf"%>