package com.news.controller;


import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.service.NewsService;

/**
 * Created by hetingting on 15-12-28.
 */
@Controller
public class ShowIndexController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
	private static final String title = null;
	
	@Autowired
    private NewsService newsService;
	
    @RequestMapping("selectNewsIndex")
    public ModelAndView selectTrueAllNews( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        
        //新闻详细信息显示
        List<News> newsList= newsService.selectTrueAllNews();
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/NewsIndex");
        modelAndView.addObject("newslist", newsList);
        
        
        //新闻咨询和媒体动态的显示
        List<News> newsList2= newsService.selectNewsTitle(title);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList2));
        modelAndView.setViewName("frontdesk/news/NewsIndex");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist2", newsList2);
        
        return modelAndView;
}
    @RequestMapping("selectNewsIndex/news")
    public ModelAndView selectTrueNews( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        List<News> newsList= newsService.selectTrueAllNews();
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/NewsIndex");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist", newsList);
        return modelAndView;
}
   @RequestMapping("selectNewsIndex/title")
   public ModelAndView selectNewsTitle( ModelAndView modelAndView) {
       LOGGER.debug("view is news find by condition or all");
       List<News> newsList2= newsService.selectNewsTitle(title);
      LOGGER.debug("news json is" + JSONObject.toJSONString(newsList2));
       modelAndView.setViewName("frontdesk/news/NewsIndex");
       modelAndView.addObject("menuType", "4");
       modelAndView.addObject("newslist2", newsList2);
      return modelAndView;
}
   
}