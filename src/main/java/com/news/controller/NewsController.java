package com.news.controller;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.service.NewsService;
import org.apache.tomcat.jni.File;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liqiang on 15-12-24.
 */
@Controller
public class NewsController {
    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
    @Autowired
    private NewsService newsService;

    @RequestMapping("newsAdd")
    public ModelAndView newsAdd(ModelAndView modelAndView){
        LOGGER.debug("view is news add page");
        modelAndView.setViewName("backstage/news/newsAdd");
        return modelAndView;
    }

    @RequestMapping("news")
    public ModelAndView news(ModelAndView modelAndView){
        LOGGER.debug("view is news news index page");
        modelAndView.setViewName("backstage/news/index");
        return modelAndView;
    }

    @RequestMapping(value = "newsPostAdd" , method = RequestMethod.POST)
    @ResponseBody
    public String newsPostAdd(@RequestParam String title, @RequestParam String content, @RequestParam File file){
        LOGGER.debug("view is news post add method");
        return "";
    }

    @RequestMapping("findAllByLike")
    @ResponseBody
    public String findAllByLike() {
        LOGGER.debug("view is news find by condition or all");
        List<News> newsesList= newsService.selectAllNews(1);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsesList));
        Map<String,Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("rows",newsesList);
        jsonMap.put("total", 3);
        LOGGER.debug(JSONObject.toJSONString(jsonMap));
        return JSONObject.toJSONString(jsonMap);
    }
}
