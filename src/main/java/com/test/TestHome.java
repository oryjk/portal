package com.test;

import com.companyintro.service.CompanyIntroService;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by dianjinzi on 28/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestHome {
    @Autowired
    private CompanyIntroService companyIntroService;

    @Test
    public void TestCompanyIntroService(){
        List list=companyIntroService.selectDateCompanyIntro(1);
        System.out.print(list);
    }

}
