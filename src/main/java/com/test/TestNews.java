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
 * Created by dianjinzi on 29/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestNews {
    @Autowired
    private NewsMapper newsMapper;

    @Test
    public void TestGetNewsAndMedia(){
        //List list=newsMapper.getNewsAndMedia(5);
        //System.out.print(list);
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
