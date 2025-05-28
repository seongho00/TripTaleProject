package com.example.demo.service;

import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class KakaoOAuthService {

	public String requestAccessToken(String authorizationCode) {
		// 1. 요청 URL
		String url = "https://kauth.kakao.com/oauth/token";

		// 2. 요청 파라미터 설정
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "7bc7ddcd45265ce40ef350a2a2cba050"); // 👉 여기에 실제 REST API 키 입력
		params.add("redirect_uri", "http://localhost:8080/oauth/kakao/callback");
		params.add("code", authorizationCode);
		params.add("client_secret", "7puvuaBb4DsH5Dfod8tPMgWng8poGjS4"); // 👉 클라이언트 시크릿 추가

		System.out.println("보내는 요청 파라미터: " + params.toString());
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
		String accessToken = parseResponseBody(response.getBody());
		return accessToken;

	}

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

			return accessToken;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

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
		System.out.println("응답 상태: " + response.getStatusCode());
		System.out.println("응답 바디: " + response.getBody());
		parseUserResponseBody(response.getBody());

	}

	public void parseUserResponseBody(String responseBody) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			JsonNode root = objectMapper.readTree(responseBody);

			String id = root.path("id").asText();
			String connectedAt = root.path("connected_at").asText();
			String nickname = root.path("properties").path("nickname").asText();
			System.out.println(id);
			System.out.println(connectedAt);
			System.out.println(nickname);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void logout(String accessToken) {
		String url = "https://kapi.kakao.com/v1/user/logout";

		// 1. 헤더 설정
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED); // Content-Type 지정
		headers.setBearerAuth(accessToken); // Authorization: Bearer {token}

		// 2. 요청 객체 구성 (POST지만 바디 필요 없음)
		HttpEntity<String> request = new HttpEntity<>(null, headers);

		// 3. RestTemplate 요청
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.POST, request, String.class);

		// 4. 응답 확인
		System.out.println("응답 코드: " + response.getStatusCode());
		System.out.println("응답 바디: " + response.getBody());
	}

}
