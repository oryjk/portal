package com.news.controller;

import com.alibaba.fastjson.JSONObject;
import com.media.bean.Media;
import com.media.service.MediaService;
import com.news.bean.News;
import com.news.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.utils.file.ImageUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by liqiang on 15-12-24.
 */
@Controller
//@RequestMapping("admin")
public class NewsController {
    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
    @Autowired
    private NewsService newsService;
    @Autowired
    private MediaService mediaService;
    @Autowired
    private ImageUtils imageUtils;

    @RequestMapping("photos")
    public ModelAndView photos(ModelAndView modelAndView, @RequestParam int id){
        LOGGER.debug("view is news photos page");
        List<Media> media = mediaService.selectNewsMedia(id);
        modelAndView.setViewName("backstage/news/photos");
        modelAndView.addObject("media", media);
        LOGGER.debug(JSONObject.toJSONString(mediaService.selectNewsMedia(id)));
        return modelAndView;
    }

    @RequestMapping("newsAdd")
    public ModelAndView newsAdd(ModelAndView modelAndView){
        LOGGER.debug("view is news add page");
        modelAndView.setViewName("backstage/news/newsAdd");
        return modelAndView;
    }

    @RequestMapping("news")
    public ModelAndView news(ModelAndView modelAndView){
        LOGGER.debug("view is news page");
        modelAndView.setViewName("backstage/news/index");
        return modelAndView;
    }

    @RequestMapping("newsPostAdd")
    @ResponseBody
    public String newsPostAdd(@RequestParam String title, @RequestParam int type,@RequestParam String content,@RequestParam String url){
        LOGGER.debug("news add ajax method" + title + type + content);
        try{
            LOGGER.debug("start add news");
            News news = new News();
            news.setTitle(title);
            news.setCategroy_id(type);
            news.setArticle(content);
            news.setState(1);
            int news_id = newsService.insertNews(news);
            LOGGER.debug("news_id" + news_id);
            Media media = new Media();
            media.setUrl(url);
            media.setType(1);
            media.setRelation(news_id);
            mediaService.insertMedia(media);
        }catch(Exception e){
            return "false";
        }
        return "success";
    }

    @RequestMapping("newsDetail")
    public ModelAndView newsDetail(@RequestParam int id, ModelAndView modelAndView){
        LOGGER.debug("view is newsDetail page and news.id = " + id);
        News news = newsService.selectNewsById(id);
        modelAndView.setViewName("backstage/news/news");
        modelAndView.addObject("news", news);
        return modelAndView;
    }

    @RequestMapping("newsEdit")
    public ModelAndView newsEdit(@RequestParam int id, ModelAndView modelAndView){
        LOGGER.debug("view is newsEdit page");
        modelAndView.setViewName("backstage/news/newsEdit");
        modelAndView.addObject("news_id", id);
        return modelAndView;
    }

    @RequestMapping("del")
    @ResponseBody
    public String del(@RequestParam int id){
        LOGGER.debug("news del ajax method" + id);
        try{
            newsService.deleteNews(id);
        }catch(Exception e){
            return "false";
        }
        return "success";
    }

    @RequestMapping("findAllByLike")
    @ResponseBody
    public String findAllByLike() {
        LOGGER.debug("news select method");
        List<News> newsesList= newsService.selectAllNews(1);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsesList));
        Map<String,Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("rows",newsesList);
        jsonMap.put("total", 3);
        LOGGER.debug(JSONObject.toJSONString(jsonMap));
        return JSONObject.toJSONString(jsonMap);
    }

    @RequestMapping("fileUpload")
    public @ResponseBody String fileUpload(@RequestParam MultipartFile file, HttpServletRequest request, ModelAndView modelAndView) {
        LOGGER.debug("11111111111111111111111111111111111" + file);
        LOGGER.debug("fileUpload post");
        String image_path = null;
        try {
            image_path = imageUtils.uploadImage(file, request);
        }catch (Exception e){
            e.printStackTrace();
        }
        return image_path;
    }

}