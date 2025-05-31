package com.example.demo.controller;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.service.ArticleService;
import com.example.demo.service.KakaoOAuthService;
import com.example.demo.vo.Article;
import com.example.demo.vo.Rq;

@Controller
public class UsrPlannerController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	Rq rq;

	UsrPlannerController(TripTaleProjectApplication tripTaleProjectApplication) {
		this.tripTaleProjectApplication = tripTaleProjectApplication;

	}

	@RequestMapping("usr/planner/calender")
	public String calender(Model model, int year, int month) {
		

		return "usr/planner/calender";
	}

	@RequestMapping("usr/planner/selectTime")
	public String selectTime(Model model) {

		return "usr/planner/selectTime";
	}

	@RequestMapping("usr/planner/reigon")
	public String reigon(Model model) {

		return "usr/planner/reigon";
	}

}
