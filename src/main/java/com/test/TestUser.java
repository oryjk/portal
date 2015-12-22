package com.test;

import com.user.dao.UserMapper;
import com.user.bean.User;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestUser {

    @Autowired
    private UserMapper userMapper;


    @Test
    public void testUser(){

       List<User> list=userMapper.findAll();

       System.out.print(list);


    }



}