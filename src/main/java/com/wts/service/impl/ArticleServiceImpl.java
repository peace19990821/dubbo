package com.wts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wts.dao.ArticleMapper;
import com.wts.domain.Article;
import com.wts.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	ArticleMapper articleMapper;

	@Override
	public List<Article> selects(Article article,String dtj,String start,String end) {
		return articleMapper.selects(article,dtj,start,end);
	}
}
