package com.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqiang on 15-12-23.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public ModelAndView login(ModelAndView modelAndView){
        modelAndView.setViewName("common/login");
        return modelAndView;
    }

    @RequestMapping("/main")
    public ModelAndView query(ModelAndView modelAndView){
        modelAndView.setViewName("index/index");
        return modelAndView;
    }
}
