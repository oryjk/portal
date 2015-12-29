package com.news.dao;

import com.base.mapper.SqlMapper;
import com.news.bean.News;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by dianjinzi on 23/12/15.
 */
@Component
public interface NewsMapper extends SqlMapper{
    void insertNews(News news);
    void deleteNews(int id);
    void updateNews(News news);
    List<News> selectTrueAllNews();
    List<News> selectAllNews(int state);
    News selectNewsById(int id);
    List<News> selectDateNews(int number);
    List<News> selectNewsTitle(News news);
	List<News> selectByLimit(int number);
    List<News> getNewsAndMedia(int news_id);
}
