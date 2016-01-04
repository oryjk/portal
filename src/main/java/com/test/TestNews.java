package com.test;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.constant.ConstantNews;
import com.news.dao.NewsMapper;
import com.news.service.NewsService;
import com.newscategroy.bean.NewsCategroy;
import com.newscategroy.dao.NewsCategroyMapper;
import com.utils.page.Pagination;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.enterprise.inject.New;
import java.util.List;

/**
 * Created by dianjinzi on 29/12/15.
 */
//@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestNews {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestNews.class);
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private NewsService newsService;
    @Autowired
    NewsCategroyMapper newsCategroyMapper;

    @Test
    //分页按条件查询新闻
    public void TestPaginationNews(){
        Pagination pagination = new Pagination();
        pagination.setType(ConstantNews.HOTNEWS_TYPE);
        pagination.setPageSize(10);
        pagination.setPageNo(1);
        News news = new News();
        news.setTitle("定盘");
        pagination.setBean(news);
        pagination.setRowCount(newsService.selectNewsConditionCount(pagination).longValue());
        LOGGER.debug(JSONObject.toJSONString("*******************" + newsService.selectNewsConditionCount(pagination).longValue()));
        LOGGER.debug(JSONObject.toJSONString("*******************" + newsService.selectNewsCondition(pagination)));
    }

    @Test
    public void TestSelectDateNews(){
        List list=newsMapper.selectDateNews(5);
        for (int i=0;i<list.size();i++){
            String str=list.get(i).toString();
            System.out.print(str);
        }




    }

}
