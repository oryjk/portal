package com.user.controller;

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





    @RequestMapping("/query")
    public ModelAndView  query(ModelAndView modelAndView){

  System.out.print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        modelAndView.setViewName("user");
        return modelAndView;
    }




}
