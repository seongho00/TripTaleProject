<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>


<c:set var="pageTitle" value="MAIN PAGE"></c:set>
<%@ include file="../common/head.jspf"%>
<%
String clientId = "5lIc5HiT6OdtWBZYb5k5";//애플리케이션 클라이언트 아이디값";
String redirectURI = URLEncoder.encode("http://localhost:8080/usr/member/naverCallback", "UTF-8");
SecureRandom random = new SecureRandom();
String state = new BigInteger(130, random).toString();
String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code" + "&client_id=" + clientId
		+ "&redirect_uri=" + redirectURI + "&state=" + state;
session.setAttribute("state", state);
%>

<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.5/kakao.min.js"
	integrity="sha384-dok87au0gKqJdxs7msEdBPNnKSRT+/mhTVzq+qOhcL464zXwvcrpjeWvyj1kCdq6" crossorigin="anonymous"></script>

<script>
	Kakao.init('d7bf7c956990f8ef170f7a8d03a9bf34'); // 사용하려는 앱의 JavaScript 키 입력
</script>




<div class="flex justify-center w-screen h-screen items-center overflow-hidden gap-2.5 px-[9px] py-[7px] bg-white ">
	<div
		class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 h-[611px] w-[510px] overflow-hidden gap-7 py-[7px] rounded-[10px] bg-[#aedff7] border border-black"
		style="box-shadow: 4px 4px 4px 1px rgba(0, 0, 0, 0.25);">
		<div class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 relative overflow-hidden">
			<a href="../home/main">
				<img src="/images/로고.png" class="flex-grow-0 flex-shrink-0 w-[109px] h-[76px] object-cover" />
			</a>
			<p class="mt-2 flex-grow-0 flex-shrink-0 w-[510px] h-[50px] text-5xl text-center text-black">회원가입</p>
		</div>
		<div
			class="flex flex-col justify-start items-center flex-grow-0 flex-shrink-0 relative overflow-hidden gap-[19px] p-2.5">
			<a href="<%=apiURL%>">
				<img class=" w-full h-20" src="/images/네이버 로그인.png" />
			</a>
			<a id="kakao-login-btn"
				href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=${kakaoClientId}&redirect_uri=${kakaoRedirectUri}">
				<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222" alt="카카오 로그인 버튼" />
			</a>
			<p id="token-result"></p>

		</div>
		<div class="flex justify-center items-center self-stretch flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5">
			<svg width="177" height="2" viewBox="0 0 177 2" fill="none" xmlns="http://www.w3.org/2000/svg"
				class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <path d="M0.5 1H176.5" stroke="black" stroke-opacity="0.5"></path>
      </svg>
			<p class="flex-grow-0 flex-shrink-0 text-xl text-center text-black/50">또는</p>
			<svg width="177" height="2" viewBox="0 0 177 2" fill="none" xmlns="http://www.w3.org/2000/svg"
				class="flex-grow-0 flex-shrink-0" preserveAspectRatio="none">
        <path d="M0.5 1H176.5" stroke="black" stroke-opacity="0.5"></path>
      </svg>
		</div>
		<div class="flex flex-col flex-grow-0 flex-shrink-0 relative overflow-hidden gap-2.5 rounded-[5px] bg-[#18a0fb]">
			<a class="flex items-center justify-center  w-80 h-12 text-2xl text-white" href="join">ID / PW 회원가입</a>
		</div>
	</div>
</div>

<%@ include file="../common/foot.jspf"%>