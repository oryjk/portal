package com.news.controller;

import com.news.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Controller
@RequestMapping("")
public class NewsController {
    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsService newsService;

    @RequestMapping("")
    public ModelAndView queryNews(ModelAndView modelAndView){
        modelAndView.setViewName("");
        modelAndView.addObject("media", newsService.selectAllNews(1));
        return  modelAndView;
    }
}
