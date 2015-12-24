package com.user.controller;

import com.user.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.ejb.PostActivate;

/**
 * Created by dianjinzi on 22/12/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserMapper userMapper;


    @RequestMapping("/query")
    public ModelAndView  query(ModelAndView modelAndView){
        System.out.print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        userMapper.findAll();
        modelAndView.setViewName("user");
        modelAndView.addObject("user", userMapper.findAll());
        return modelAndView;
    }




}
