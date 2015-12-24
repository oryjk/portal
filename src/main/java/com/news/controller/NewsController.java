package com.news.controller;

import org.apache.tomcat.jni.File;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqiang on 15-12-24.
 */
@Controller
public class NewsController {
    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);

    @RequestMapping("newsAdd")
    public ModelAndView newsAdd(ModelAndView modelAndView){
        LOGGER.debug("view is news add page");
        modelAndView.setViewName("news/newsAdd");
        return modelAndView;
    }

    @RequestMapping("news")
    public ModelAndView news(ModelAndView modelAndView){
        LOGGER.debug("view is news news index page");
        modelAndView.setViewName("news/index");
        return modelAndView;
    }

    @RequestMapping("newsPostAdd")
    @ResponseBody
    public String newsPostAdd(@RequestParam String title, @RequestParam String content, @RequestParam File file){
        LOGGER.debug("view is news post add method");
        return "";
    }

    @RequestMapping("")
    @ResponseBody
    public String findAllByLike(){
        LOGGER.debug("view is news find by condition or all");
        return "";
    }
}
