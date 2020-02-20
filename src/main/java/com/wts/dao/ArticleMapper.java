package com.wts.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wts.domain.Article;

public interface ArticleMapper {

	List<Article> selects(Article article,@Param("dtj")String dtj,@Param("start")String start,@Param("end")String end);

}
