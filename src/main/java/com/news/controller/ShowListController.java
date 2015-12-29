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
//import com.utils.page.Pagination;

/**
 * Created by hetingting on 15-12-28.
 */
@Controller
public class ShowListController {
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
	private static final int state = 0;
	private static final int number = 0;
	
	@Autowired
	private NewsService newsService;
	
//	private Pagination pagination;
	
	@RequestMapping("selectNewsList")
    public ModelAndView selectAllNews( ModelAndView modelAndView ) {
        LOGGER.debug("view is news find by condition or all");
        
      
		//分页的显示
        List<News> newsList1=newsService.selectByLimit(number);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList1));
        modelAndView.setViewName("frontdesk/news/NewsList");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist1", newsList1);
        
//        List<News> pagination=newsService.selectByLimit(number);
//        LOGGER.debug("news json is" + JSONObject.toJSONString(pagination));
//        modelAndView.setViewName("frontdesk/news/NewsList");
//        modelAndView.addObject("menuType", "4");
//        Pagination page = new Pagination();
//        long c=3;
//        ((Pagination) pagination).setRowCount(c);
//        ((Pagination) pagination).setPageSize(number);
//        ((Pagination) pagination).setPageNo(1);
//        modelAndView.addObject("pagination",pagination);
        
        //新闻的列表显示
        List<News> newsList= newsService.selectAllNews(state);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        modelAndView.setViewName("frontdesk/news/NewsList");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist", newsList);
       
        return modelAndView;
}
}
