package com.news.service;

import com.news.bean.News;
import com.utils.page.Pagination;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
public interface NewsService {
    Integer insertNews(News news);
    void deleteNews(int id);
    void updateNews(News news);
    List<News> selectTrueAllNews(Pagination pagination);
    List<News> selectAllNews(int state);
    News selectNewsById(int id);
    List<News> selectDateNews(int number);
    List<News> selectNewsTitle(String title);
    Integer selectCompanyCountNews();
    List<News> selectCompanyNews(Pagination pagination);
    Integer selectHotsCountNews();
    List<News> selectHotsNews(Pagination pagination);
    Integer selectCountAllNews();
}