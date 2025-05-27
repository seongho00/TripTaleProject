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

	@RequestMapping("usr/member/join")
	public String join(Model model) {

		return "usr/member/join";
	}
	
	@RequestMapping("usr/member/login")
	public String lgoin(Model model) {

		return "usr/member/login";
	}
}
