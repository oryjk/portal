package com.news.service;

import com.news.bean.News;
import com.news.dao.NewsMapper;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Service
public class NewsServiceImp implements NewsService{
    private static final Logger LOGGER= LoggerFactory.getLogger(NewsServiceImp.class);

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public Integer insertNews(News news) {
        try {
            newsMapper.insertNews(news);
            return news.getNews_id();
        }catch (Exception e){
            LOGGER.error("Some thing wrong when create a news");
        }
        return 0;
    }

    @Override
    public void deleteNews(int id) {
        try {
            newsMapper.deleteNews(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when delete a news");
        }
    }

    @Override
    public void updateNews(News news) {
        try {
            newsMapper.updateNews(news);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when update a news");
        }
    }

    @Override
    public List<News> selectTrueAllNews(Pagination pagination) {
        List<News> list=null;
        try {
            list=newsMapper.selectTrueAllNews(pagination);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectTrueAll a news");
        }
        return list;
    }

    @Override
    public List<News> selectAllNews(int state) {
        List<News> list=null;
        try {
            list=newsMapper.selectAllNews(state);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectAll a news");
        }
        return list;
    }

    @Override
    public News selectNewsById(int id) {
        News news=null;
        try {
            news=newsMapper.selectNewsById(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectById a news");
        }
        return news;
    }

    @Override
    public List<News> selectDateNews(int number) {
        List<News> list=null;
        try {
            list=newsMapper.selectDateNews(number);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectDate a news");
        }
        return list;
    }

    @Override
    public List<News> selectNewsTitle(String title) {
        List<News> list=null;
        News news=new News();
        try {
            news.setTitle(title);
            list=newsMapper.selectNewsTitle(news);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectNewsTitle a news");
        }
        return list;
    }

    @Override
    public Integer selectCompanyCountNews(){
        return newsMapper.selectCompanyCountNews();
    }

    @Override
    public List<News> selectCompanyNews(Pagination pagination){
        return newsMapper.selectCompanyNews(pagination);
    }

    @Override
    public Integer selectHotsCountNews(){
        return newsMapper.selectHotsCountNews();
    }

    @Override
    public  List<News> selectHotsNews(Pagination pagination){
        return  newsMapper.selectHotsNews(pagination);
    }

    @Override
    public Integer selectCountAllNews(){
        return newsMapper.selectCountAllNews();
    }

    //分页条件查询
    @Override
    public List<News> selectNewsCondition(Pagination pagination){
        return newsMapper.selectNewsCondition(pagination);
    }
    @Override
    public Integer selectNewsConditionCount(Pagination pagination){
        return newsMapper.selectNewsConditionCount(pagination);
    }
}