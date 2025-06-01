package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.vo.Rq;

@Controller
public class UsrPlannerController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	Rq rq;

	UsrPlannerController(TripTaleProjectApplication tripTaleProjectApplication) {
		this.tripTaleProjectApplication = tripTaleProjectApplication;

	}

	@RequestMapping("usr/planner/calendar")
	public String calender(Model model, @RequestParam(defaultValue = "") String region) {
		if (region.equals("")) {
			return rq.replace("지역을 선택해주세요.", "../planner/region");
		}

		return "usr/planner/calendar";
	}

	@RequestMapping("usr/planner/showFullCalendar")
	public String showCalender(Model model) {

		return "usr/planner/showFullCalendar";
	}

	@RequestMapping("usr/planner/selectTime")
	public String selectTime(Model model) {

		return "usr/planner/selectTime";
	}

	@RequestMapping("usr/planner/region")
	public String region(Model model) {

		return "usr/planner/region";
	}

}
