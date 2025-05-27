package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.MemberService;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("usr/member/developerJoin")
	public String developerJoin(Model model) {

		return "usr/member/developerJoin";
	}
	
	@RequestMapping("usr/member/join")
	public String join(Model model) {

		return "usr/member/join";
	}
	
	
	
	@RequestMapping("usr/member/findLoginId")
	public String findLoginId(Model model) {

		return "usr/member/findLoginId";
	}
}
