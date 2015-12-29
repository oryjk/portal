package com.news.service;

import com.news.bean.News;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
public interface NewsService {
    void insertNews(News news);
    void deleteNews(int id);
    void updateNews(News news);
    List<News> selectTrueAllNews();
    List<News> selectAllNews(int state);
    News selectNewsById(int id);
    List<News> selectDateNews(int number);
    List<News> selectNewsTitle(String title);
    List<News> selectByLimit(int number);  
	
}
