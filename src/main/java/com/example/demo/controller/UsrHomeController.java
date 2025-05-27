package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.ArticleService;
import com.example.demo.vo.Article;

@Controller
public class UsrHomeController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping("usr/home/main")
	public String main(Model model) {

		Article article = articleService.getArticle();

		model.addAttribute("article", article);
		return "usr/home/main";
	}

}
