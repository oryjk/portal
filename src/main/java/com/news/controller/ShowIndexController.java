package com.news.controller;


import java.util.List;

import com.banner.bean.Banner;
import com.banner.bean.ConStantBannerType;
import com.banner.service.BannerService;
import com.media.bean.Media;
import com.media.service.MediaService;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.service.NewsService;

/**
 * Created by hetingting on 15-12-28.
 */
@Controller
@RequestMapping("news")
public class ShowIndexController {

    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);

    @Autowired
    private NewsService newsService;
    @Autowired
    private MediaService mediaService;
    @Autowired
    private Pagination pagination;
    @Autowired
    private BannerService bannerService;

    @RequestMapping("all")
    public ModelAndView selectTrueAllNews( ModelAndView modelAndView,Banner banner) {
        LOGGER.debug("view is news find by condition or all");

        //新闻详细信息显示
        List<News> newsList= newsService.selectDateNews(3);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsList));
        for(News m: newsList){
            if(m.getArticle() != null && m.getArticle().length() > 120){
                m.setArticle(m.getArticle().substring(0,120)+"...");
            }
        }
        modelAndView.addObject("newslist", newsList);

        //新闻咨询
        pagination.setPageSize(3);
        List<News> newsCompanyList= newsService.selectCompanyNews(pagination);
        //媒体
        List<News> newsHotsList= newsService.selectHotsNews(pagination);

        banner.setType(ConStantBannerType.NEWS_TYPE);
        banner.setStatus(ConStantBannerType.SHOW_STATUS);
        List<Banner> banners=bannerService.selectTypeBanner(banner);
        modelAndView.addObject("banners",banners);

        modelAndView.setViewName("frontdesk/news/NewsIndex");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist2", newsCompanyList);
        modelAndView.addObject("newslist3", newsHotsList);
        return modelAndView;
    }

    @RequestMapping("detail")
    public ModelAndView selectTrueNews(ModelAndView modelAndView , @RequestParam int id) {
        LOGGER.debug("view is news find by condition or all");
        News news= newsService.selectNewsById(id);
        LOGGER.debug("news json is" + JSONObject.toJSONString(news));
        modelAndView.setViewName("frontdesk/news/newsDetail");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("news", news);
        //根据id查询出图片
        List<Media> media = mediaService.selectNewsMedia(id);
        if(!ObjectUtils.isEmpty(media)){
            modelAndView.addObject("media", media.get(0));
        }
        return modelAndView;
    }


}
