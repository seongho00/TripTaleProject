package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.service.ArticleService;
import com.example.demo.service.KakaoOAuthService;
import com.example.demo.service.TripLocationService;
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
	@Autowired
	private TripLocationService tripLocationService;

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

	@RequestMapping("usr/test/Tmap")
	public String Tmap(Model model) {

		return "usr/test/Tmap";
	}

	@RequestMapping("usr/test/testService")
	public String testService(Model model, String keyword) {
		tripLocationService.process(keyword);
		return "실행잘됨 ㅇㅇ";
	}

	@RequestMapping("usr/test/categoryAPITest")
	public String categoryAPITest(Model model) {

		return "usr/test/categoryAPITest";
	}

	@RequestMapping("usr/test/coordToAddress")
	@ResponseBody
	public String coordToAddress(Model model, String mapX, String mapY) {

		return kakaoOAuthService.coordToAddress(mapX, mapY);

	}

}
