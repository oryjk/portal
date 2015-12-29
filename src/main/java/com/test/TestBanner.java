package com.test;

import com.banner.bean.Banner;
import com.banner.dao.BannerMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by wangyirui on 28/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestBanner {
    @Autowired
    BannerMapper bannerMapper;

    @Test
    public void TestInsertBanner(){
        Banner banner=new Banner();
        banner.setUrl("222");
        banner.setType(2);
        bannerMapper.insertBanner(banner);

    }

    @Test
    public void TestDeleteBanner(){
        bannerMapper.deleteBanner(7);
    }

    @Test
    public void TestUpdateBanner(){
        Banner banner=new Banner();
        banner.setBanner_id(6);
        banner.setUrl("333");
        banner.setType(2);
        bannerMapper.updateBanner(banner);
    }

    @Test
    public void TestSelectAllBanner(){
        List list=bannerMapper.selectBanner();
        System.out.print(list);
    }

    @Test
    public void TestSelectBannerById(){
       Banner banner=bannerMapper.selectBannerById(6);

        System.out.print(banner);
    }
    @Test
    public void TestSelectTypeBanner(){
        List list=bannerMapper.selectTypeBanner(1);

        System.out.print(list);
    }
}
