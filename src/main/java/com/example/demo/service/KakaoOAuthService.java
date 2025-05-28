package com.example.demo.service;

import java.nio.charset.StandardCharsets;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.example.demo.vo.Rq;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpSession;

@Service
public class KakaoOAuthService {

	@Autowired
	private Rq rq;

	// 토큰 요청 함수
	public String requestAccessToken(String authorizationCode) {
		String clientId = rq.getKakaoClientId();
		String clientSecret = rq.getKakaoClientSecret();

		// 1. 요청 URL
		String url = "https://kauth.kakao.com/oauth/token";

		// 2. 요청 파라미터 설정
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", clientId); // 👉 여기에 실제 REST API 키 입력
		params.add("redirect_uri", "http://localhost:8080/usr/member/kakaoCallback");
		params.add("code", authorizationCode);
		params.add("client_secret", clientSecret); // 👉 클라이언트 시크릿 추가

		// 3. 헤더 설정
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		// 4. 요청 객체 구성
		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(params, headers);

		// 5. RestTemplate 사용
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.postForEntity(url, request, String.class);

		// 6. 응답 출력
//		System.out.println("응답 코드: " + response.getStatusCode());
//		System.out.println("응답 바디: " + response.getBody());
		String accessTokenBody = parseResponseBody(response.getBody());

		return accessTokenBody;

	}

	// 토큰 요청 데이터 까보기
	public String parseResponseBody(String responseBody) {

		try {

			ObjectMapper objectMapper = new ObjectMapper();
			JsonNode root = objectMapper.readTree(responseBody);

			String accessToken = root.path("access_token").asText();
			String tokenType = root.path("token_type").asText();
			String idToken = root.path("id_token").asText();
			String scope = root.path("scope").asText();
			String refreshToken = root.path("refresh_token").asText();
			int expiresIn = root.path("expires_in").asInt();
			int refreshTokenExpiresIn = root.path("refresh_token_expires_in").asInt();
			HttpSession session = (HttpSession) rq.getSession();
			session.setAttribute("accessToken", accessToken);

			return accessToken;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	// 토큰을 통해 유저 데이터 요청
	public void getUserInfo(String accessToken) {
		String url = "https://kapi.kakao.com/v2/user/me?secure_resource=true";

		// 1. 헤더 설정
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth(accessToken); // "Authorization: Bearer {토큰}"
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

		HttpEntity<String> entity = new HttpEntity<>(headers);

		// 2. RestTemplate으로 GET 요청
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);

		// 3. 응답 출력
//		System.out.println("응답 상태: " + response.getStatusCode());
//		System.out.println("응답 바디: " + response.getBody());
		parseUserResponseBody(response.getBody());

	}

	// 유저 데이터 까보기
	public void parseUserResponseBody(String responseBody) {
		try {

			ObjectMapper objectMapper = new ObjectMapper();
			JsonNode root = objectMapper.readTree(responseBody);

			String id = root.path("id").asText();
			String connectedAt = root.path("connected_at").asText();
			String nickname = root.path("properties").path("nickname").asText();
			String profileImage = root.path("properties").path("profile_image").asText();
			String thumbnailImage = root.path("properties").path("thumbnail_image").asText();
			String email = root.path("kakao_account").path("email").asText();

			rq.login(id);
			System.out.println(id);
			System.out.println(connectedAt);
			System.out.println(nickname);
			System.out.println(profileImage);
			System.out.println(thumbnailImage);
			System.out.println(email);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 카카오 로그아웃
	public void doLogout() {
		HttpSession session = (HttpSession) rq.getSession();

		String accessToken = (String) session.getAttribute("accessToken");

		String url = "https://kapi.kakao.com/v1/user/logout";

		// 1. 헤더 설정
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.parseMediaType("application/x-www-form-urlencoded;charset=utf-8"));
		headers.setBearerAuth(accessToken); // "Authorization: Bearer {ACCESS_TOKEN}"
		headers.setAcceptCharset(Collections.singletonList(StandardCharsets.UTF_8));

		// 2. HttpEntity 생성 (POST 바디는 필요 없음)
		HttpEntity<String> request = new HttpEntity<>(null, headers);

		// 3. RestTemplate 사용
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.POST, request, String.class);

		// 4. 결과 출력
//		System.out.println("응답 코드: " + response.getStatusCode());
//		System.out.println("응답 바디: " + response.getBody());
	}

}
