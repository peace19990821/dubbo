package com.wts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wts.domain.Article;
import com.wts.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	ArticleService articleService;
	
	@RequestMapping("/list")
	/**
	 * @Title: articles 
	 * @Description: 我的文章列表
	 * @param model
	 * @param article
	 * @param page
	 * @param pageSize
	 * @return
	 * @return: String
	 */
	public String articles(Model model,Article article,@RequestParam(defaultValue = "1")Integer pageNum,
			@RequestParam(defaultValue = "10")Integer pageSize,String dtj,String start,String end) {
		PageHelper.startPage(pageNum,pageSize);
		List<Article> list = articleService.selects(article,dtj,start,end);
		PageInfo<Article> info = new PageInfo<>(list);
		model.addAttribute("info",info);
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("dtj",dtj);
		return "articles";
	}
}
