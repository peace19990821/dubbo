package com.wts.service;

import java.util.List;

import com.wts.domain.Article;

public interface ArticleService {

	List<Article> selects(Article article,String dtj,String start,String end);

}
