package com.example.demo.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		model.addAttribute("region", region);

		return "usr/planner/calendar";
	}

	@RequestMapping("usr/planner/showFullCalendar")
	public String showFullCalendar(Model model, int memberId) {
		model.addAttribute("memberId", memberId);
		return "usr/planner/showFullCalendar";
	}

	@RequestMapping("usr/planner/selectTime")
	public String selectTime(Model model, LocalDateTime startDate, LocalDateTime endDate,
			@RequestParam(defaultValue = "") String region) {
		if (region.equals("")) {
			return rq.replace("지역을 선택해주세요.", "../planner/region");
		}

		// yyyy-MM-dd형식 포맷터
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		// MM/dd 형식 포맷터
		DateTimeFormatter monthDayFormatter = DateTimeFormatter.ofPattern("MM/dd");

		String dateFormattedStartDate = startDate.format(dateFormatter);
		String dateFormattedEndDate = endDate.format(dateFormatter);

		long diffDays = ChronoUnit.DAYS.between(startDate, endDate) + 1;

		// ✅ 날짜 리스트 생성
		List<String> dateList = new ArrayList<>();
		for (int i = 0; i < diffDays; i++) {
			LocalDateTime targetDate = startDate.plusDays(i);
			dateList.add(targetDate.format(monthDayFormatter)); // "MM/dd" 형식으로
		}

		model.addAttribute("startDate", dateFormattedStartDate);
		model.addAttribute("endDate", dateFormattedEndDate);
		model.addAttribute("dateList", dateList); // ✅ 날짜 리스트 전달
		model.addAttribute("diffDays", diffDays);
		return "usr/planner/selectTime";
	}

	@RequestMapping("usr/planner/region")
	public String region(Model model) {

		return "usr/planner/region";
	}
	
	

}
