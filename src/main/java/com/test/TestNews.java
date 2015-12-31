package com.test;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.dao.NewsMapper;
import com.newscategroy.bean.NewsCategroy;
import com.newscategroy.dao.NewsCategroyMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
    NewsCategroyMapper newsCategroyMapper;

    @Test
    public void TestGetNewsAndMedia(){
        //List list=newsMapper.getNewsAndMedia(5);
        //System.out.print(list);
        LOGGER.debug(JSONObject.toJSONString("*******************"+newsCategroyMapper.selectNewsCountCategroy()));
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
