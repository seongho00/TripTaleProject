package com.example.demo.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.demo.WebMvcConfigurer;
import com.example.demo.interceptor.BeforeActionInterceptor;
import com.example.demo.service.KakaoOAuthService;
import com.example.demo.service.MemberService;
import com.example.demo.service.NaverOAuthService;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

@Controller
public class UsrMemberController {

	private final WebMvcConfigurer webMvcConfigurer;

	private final BeforeActionInterceptor beforeActionInterceptor;

	@Autowired
	private MemberService memberService;
	@Autowired
	private KakaoOAuthService kakaoOAuthService;
	@Autowired
	private NaverOAuthService naverOAuthService;
	@Autowired
	private Rq rq;

	UsrMemberController(BeforeActionInterceptor beforeActionInterceptor, WebMvcConfigurer webMvcConfigurer) {
		this.beforeActionInterceptor = beforeActionInterceptor;
		this.webMvcConfigurer = webMvcConfigurer;

	}

	@RequestMapping("usr/member/developerJoin")
	public String developerJoin(Model model) {

		if (rq.isLogined()) {
			System.out.println("로그인 되어있음");
			return "usr/home/main";
		}

		String kakaoClientId = rq.getKakaoClientId();
		String kakaoRedirectUri = "http://localhost:8080/usr/member/kakaoCallback";

		model.addAttribute("kakaoClientId", kakaoClientId);
		model.addAttribute("kakaoRedirectUri", kakaoRedirectUri);

		return "usr/member/developerJoin";
	}

	@RequestMapping("usr/member/join")
	public String join(Model model) {

		return "usr/member/join";
	}

	@RequestMapping("usr/member/doJoin")
	public String doJoin(Model model, String loginId, String loginPw, String name, String nickname, String email) {

		email = "aofjorgj@napkgpsrg";
		name = "test";
		nickname = "test_nickname";
		ResultData doJoinRd = memberService.doJoin(loginId, loginPw, name, nickname, email);

		return "usr/home/main";
	}

	@RequestMapping("usr/member/findLoginId")
	public String findLoginId(Model model) {

		return "usr/member/findLoginId";
	}

	@RequestMapping("usr/member/naverCallback")
	public String naverCallback(String code, String state) throws UnsupportedEncodingException {

		String accessToken = naverOAuthService.requestAccessToken(code, state);

		naverOAuthService.getUserInfo(accessToken);

		return "usr/home/main";
	}

	@RequestMapping("usr/member/kakaoCallback")
	public String kakaoCallback(String code) {

		String accessToken = kakaoOAuthService.requestAccessToken(code);

		kakaoOAuthService.getUserInfo(accessToken);

		return "usr/home/main";
	}

	@RequestMapping("usr/member/doLogout")
	public String doLogout(Model model) {

		if (rq.isLogined()) {
			rq.logout();
			try {
				kakaoOAuthService.doLogout();
			} catch (Exception e) {

			}

			try {
				System.out.println("실행됨");
				return "usr/home/logoutBridge";
			} catch (Exception e) {

			}

		}
		return "usr/home/main";
	}

	@RequestMapping("usr/member/naverLogout")
	public String naverLogout(Model model) {

		return "redirect:https://nid.naver.com/nidlogin.logout";
	}
}
