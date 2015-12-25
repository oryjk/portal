package com.test;

import com.news.bean.News;
import com.news.dao.NewsMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by wangyirui on 23/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestNews {
    @Autowired
    private NewsMapper newsMapper;

    @Test
    public void TestInsertNews(){
        News news=new News();
        news.setArticle("66");
        news.setTitle("77");
        news.setCategroy_id(88);
        news.setState(1);
        newsMapper.insertNews(news);
    }

    @Test
    public  void TestDeleteNews(){

        newsMapper.deleteNews(3);
    }

    @Test
    public  void TestUpdateNews(){
        News news=new News();
        news.setId(2);
        news.setArticle("66");
        news.setTitle("77");
        news.setCategroy_id(88);
        news.setState(1);
        newsMapper.updateNews(news);
    }
    @Test
    public void TestSelectAllNews(){

        List list1=newsMapper.selectTrueAllNews();
        List list =newsMapper.selectAllNews(1);
        System.out.print(list1);
        System.out.print(list);
    }
    @Test
    public  void TestSelectNewsById(){
        News news=newsMapper.selectNewsById(5);
        System.out.print(news);
    }
    @Test
    public void TestSelectDateNews(){
        List list =newsMapper.selectDateNews(4);

        System.out.print(list);
    }
    @Test
    public  void TestSelectNewsTitle(){
        News news=new News();
        news.setTitle("7");
        List list=newsMapper.selectNewsTitle(news);
        System.out.print(list);
    }

}
