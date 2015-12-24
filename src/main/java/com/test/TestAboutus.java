package com.test;

import com.aboutus.bean.Aboutus;
import com.aboutus.dao.AboutusMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestAboutus {

    @Autowired
    private AboutusMapper aboutusMapper;

    @Test
    public void TestInsertAboutus(){
        Aboutus aboutus=new Aboutus();
        aboutus.setTitle("33");
        aboutus.setArticle("44");
        aboutus.setBanner_id(2);
        aboutus.setType(3);
        aboutus.setState(1);
        aboutusMapper.insertAboutus(aboutus);
    }

    @Test
    public  void TestDeleteAboutus(){
        aboutusMapper.deleteAboutus(1);

    }

    @Test
    public  void TestUpdateAboutus(){
        Aboutus aboutus=new Aboutus();
        aboutus.setAboutus_id(2);
        aboutus.setTitle("3344");
        aboutus.setArticle("4455");
        aboutus.setBanner_id(2);
        aboutus.setType(3);
        aboutus.setState(1);
        aboutusMapper.updateAboutus(aboutus);
    }
    @Test
    public void TestSelectAllAboutus(){
        List list=aboutusMapper.selectTrueAllAboutus();
        List list1= aboutusMapper.selectAllAboutus(1);
        System.out.print(list );
        System.out.print(list1 );

    }
    @Test
    public  void TestSelectAboutusById(){
        Aboutus aboutus=aboutusMapper.selectAboutusById(3);
        System.out.print(aboutus);
    }
    @Test
    public void TestSelectDateNews(){
        List list =aboutusMapper.selectDateAboutus(2);

        System.out.print(list);
    }

}




