package com.example.demo.controller;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.TripTaleProjectApplication;
import com.example.demo.service.RegionImageService;
import com.example.demo.vo.RegionImage;
import com.example.demo.vo.Rq;

@Controller
public class UsrPlannerController {

	private final TripTaleProjectApplication tripTaleProjectApplication;

	@Autowired
	Rq rq;
	@Autowired
	private RegionImageService regionImageService;

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

		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);

		return "usr/planner/selectTime";
	}

	@RequestMapping("usr/planner/region")
	public String region(Model model) {

//		List<RegionImage> regionImages = regionImageService.getRegionImage();
//
//		model.addAttribute("regionImages", regionImages);
		return "usr/planner/region";
	}

}
