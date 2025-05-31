package com.example.demo.controller;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String test(Model model) {
//		int year = 2025;
//		int month = 5;
//		Calendar cal = Calendar.getInstance();
//		System.out.printf("\t\t%d년 %d월\n", year, month);
//		System.out.printf("일\t월\t화\t수\t목\t금\t토\n");
//
//		cal.set(year, month - 1, 1);
//
//		int start = cal.get(Calendar.DAY_OF_WEEK);
//
//		for (int i = 1; i < start; i++) {
//			System.out.print("\t");
//		}
//
//		for (int i = 1; i <= cal.getActualMaximum(Calendar.DATE); i++) {
//			System.out.printf("%d\t", i);
//			if (start % 7 == 0) {
//				System.out.println();
//			}
//			start++;
//		}

		return "usr/test/test";
	}

	@RequestMapping("usr/test/kakaoMapTest")
	public String kakaoMapTest(Model model) {

		return "usr/test/kakaoMapTest";
	}

	@RequestMapping("usr/test/GeoJSONTest")
	public String GeoJSONTest(Model model) {

		return "usr/test/GeoJSONTest";
	}

}
