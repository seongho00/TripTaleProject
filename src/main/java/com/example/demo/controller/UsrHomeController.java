package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.service.ArticleService;
import com.example.demo.service.KakaoOAuthService;
import com.example.demo.vo.Rq;

@Controller
public class UsrHomeController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	private ArticleService articleService;
	@Autowired
	private KakaoOAuthService kakaoOAuthService;
	@Autowired
	Rq rq;

	UsrHomeController(TripTaleProjectApplication tripTaleProjectApplication) {
		this.tripTaleProjectApplication = tripTaleProjectApplication;

	}

	@RequestMapping("usr/home/main")
	public String main(Model model) {

		return "usr/home/main";
	}

	@RequestMapping("/")
	public String main2(Model model) {

		return "usr/home/main";
	}

	@RequestMapping("usr/test/test")
	public String test(Model model, int memberId) {
		model.addAttribute("memberId", memberId);
		return "usr/test/test";
	}

	@RequestMapping("usr/test/kakaoMapTest")
	public String kakaoMapTest(Model model) {

		return "usr/test/kakaoMapTest";
	}

	@RequestMapping("usr/test/APITest")
	public String APITest(Model model) {

		return "usr/test/APITest";
	}

	@GetMapping("api/image")
	public ResponseEntity<String> getImageData(@RequestParam String contentId) {
		String realKey = "CtMWbR%2BmYCIwYQmPYdFuMiP4LsJ6aVV3CcbyZUXI5bGiblyS1OilOVAYopA9VxwIcRyQ7pT%2FADS7FzuMVs3uEw%3D%3D";
		String url = "https://apis.data.go.kr/B551011/KorService2/detailImage2?serviceKey=" + realKey
				+ "&_type=json&MobileOS=ETC&MobileApp=TripTale&contentId=" + contentId;

		RestTemplate rt = new RestTemplate();
		String result = rt.getForObject(url, String.class);
		return ResponseEntity.ok(result);
	}

}
