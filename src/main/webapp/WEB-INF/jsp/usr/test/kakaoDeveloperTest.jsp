<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.5/kakao.min.js"
		integrity="sha384-dok87au0gKqJdxs7msEdBPNnKSRT+/mhTVzq+qOhcL464zXwvcrpjeWvyj1kCdq6" crossorigin="anonymous"></script>

	<script>
		Kakao.init('d7bf7c956990f8ef170f7a8d03a9bf34'); // 사용하려는 앱의 JavaScript 키 입력
	</script>

	<a id="kakao-login-btn"
		href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=${clientId}&redirect_uri=${RedirectUri}">
		<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222" alt="카카오 로그인 버튼" />
	</a>
	<p id="token-result"></p>



</body>
</html>