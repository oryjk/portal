package com.test;

import com.alibaba.fastjson.JSONObject;
import com.media.dao.MediaMapper;
import com.menu.bean.Menu;
import com.menu.dao.MenuMapper;
import com.menu.service.MenuService;
import com.user.dao.UserMapper;
import com.user.bean.User;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

//@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestUser {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestUser.class);

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private MediaMapper mediaMapper;
    @Autowired
    private MenuMapper menuMapper;

    @Test
    public void testUser(){

       //List<User> list=userMapper.findAll();
        //List<User> list = userMapper.findByUsername("张三");
        // List list = mediaMapper.selectAllMedia();
       // System.out.print("2222222222222222222222222222"+list.get(0).getUsername());

        List<Menu> menus = menuMapper.findAll();
        LOGGER.debug("end find menus" +   JSONObject.toJSONString(menus));
    }



}