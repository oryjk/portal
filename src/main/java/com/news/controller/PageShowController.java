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
public class PageShowController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
	@Autowired
    private NewsService newsService;
	
    @RequestMapping("selectTrueAllNews")
    public ModelAndView selectTrueAllNews( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        List<News> newsList= newsService.selectTrueAllNews();
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/New-Index");
        modelAndView.addObject("newslist", newsList);
        return modelAndView;
}
    @RequestMapping("selectAllNews")
    public ModelAndView selectAllNews( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        List<News> newsList= newsService.selectTrueAllNews();
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/New-List");
        modelAndView.addObject("newslist", newsList);
        return modelAndView;
}
    @RequestMapping("selectNewsTitle")
    public ModelAndView selectNewsTitle( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        List<News> newsList= newsService.selectTrueAllNews();
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/New-Index");
        modelAndView.addObject("newslist", newsList);
        return modelAndView;
}
}
