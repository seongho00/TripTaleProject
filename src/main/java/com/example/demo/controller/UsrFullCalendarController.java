package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.vo.Rq;

@Controller
public class UsrFullCalendarController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	Rq rq;

	UsrFullCalendarController(TripTaleProjectApplication tripTaleProjectApplication) {
		this.tripTaleProjectApplication = tripTaleProjectApplication;

	}

	@RequestMapping("/fullCalendar/showScheduleList")
	@ResponseBody
	public List<Map<String, Object>> scheduleList(Model model) {
		List<Map<String, Object>> schedualeList = new ArrayList<>();

		// 날짜만 저장
		Map<String, Object> scheduale1 = new HashMap<>();
		scheduale1.put("title", "회의");
		scheduale1.put("start", "2025-05-20");
		scheduale1.put("end", "2025-05-19");

		// 시간까지 저장
		Map<String, Object> scheduale2 = new HashMap<>();
		scheduale2.put("title", "회의");
		scheduale2.put("start", "2025-05-26T09:00:00");
		scheduale2.put("end", "2025-05-27T18:00:00");

		schedualeList.add(scheduale1);

		return schedualeList;
	}

	@RequestMapping("/fullCalendar/updateSchedule")
	@ResponseBody
	public void updateSchedule(Model model) {

	}

}
