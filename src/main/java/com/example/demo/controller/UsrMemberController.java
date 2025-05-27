package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.MemberService;
import com.example.demo.vo.ResultData;

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

	@RequestMapping("usr/member/doJoin")
	public String doJoin(Model model, String loginId, String loginPw, String name, String nickname, String email) {

		email = "aofjorgj@napkgpsrg";
		name = "test";
		nickname = "test_nickname";
		ResultData doJoinRd = memberService.doJoin(loginId, loginPw, name, nickname, email);

		return "usr/home/main";
	}

	@RequestMapping("usr/member/findLoginId")
	public String findLoginId(Model model) {

		return "usr/member/findLoginId";
	}
}
