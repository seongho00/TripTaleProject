package com.example.demo.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
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

	public void requestAccessToken(String authorizationCode) {
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
		System.out.println("응답 코드: " + response.getStatusCode());
		System.out.println("응답 바디: " + response.getBody());
		parseResponseBody(response.getBody());
	
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

	public void requestDate() {
		try {
			// 1. 요청 URL
			URL url = new URL("https://kauth.kakao.com/oauth/token");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true); // POST 데이터 전송 가능하게 설정

			// 2. 파라미터 구성
			String restApiKey = "여기에_실제_REST_API_KEY";
			String redirectUri = "http://localhost:8080/oauth/kakao/callback";
			String code = "여기에_인가_코드";

			String params = "grant_type=authorization_code" + "&client_id=" + URLEncoder.encode(restApiKey, "UTF-8")
					+ "&redirect_uri=" + URLEncoder.encode(redirectUri, "UTF-8") + "&code="
					+ URLEncoder.encode(code, "UTF-8");

			// 3. 요청 본문 전송
			try (BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()))) {
				bw.write(params);
				bw.flush();
			}

			// 4. 응답 받기
			int responseCode = conn.getResponseCode();
			InputStream inputStream = (responseCode >= 200 && responseCode < 300) ? conn.getInputStream()
					: conn.getErrorStream();

			BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
			StringBuilder response = new StringBuilder();
			String line;
			while ((line = br.readLine()) != null) {
				response.append(line);
			}

			System.out.println("응답 코드: " + responseCode);
			System.out.println("응답 바디: " + response.toString());

			br.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
