package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping("usr/test/kakaoMapTest")
	public String kakaoMapTest(Model model) {

		return "usr/test/kakaoMapTest";
	}

	@RequestMapping("usr/test/APITest")
	public String APITest(Model model) {

		return "usr/test/APITest";
	}

	@RequestMapping("usr/test/timePickerTest")
	public String timePickerTest(Model model) {

		return "usr/test/timePickerTest";
	}

	@RequestMapping("usr/test/timePickerResult")
	@ResponseBody
	public String timePickerResult(Model model, String selectHour, String selectMinute) {
		System.out.println(selectHour);
		System.out.println(selectMinute);
		return "";
	}

}
