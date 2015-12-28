package com.test;

import com.aboutus.bean.Aboutus;
import com.aboutus.bean.AboutusConstant;
import com.aboutus.dao.AboutusMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



/**
 * Created by dianjinzi on 24/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestAboutus {

    @Autowired
    AboutusMapper aboutusMapper;
    
    

	
}



