package com.news.controller;

import java.util.List;

import com.mchange.lang.LongUtils;
import com.news.constant.ConstantNews;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.news.service.NewsService;
import com.utils.page.Pagination;
import org.apache.commons.lang3.math.NumberUtils.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hetingting on 15-12-28.
 */
@Controller
@RequestMapping("news")
public class ShowListController {
    private static final Logger LOGGER = LoggerFactory.getLogger(NewsController.class);
    private static final int state = 0;
    private static final int number = 0;

    @Autowired
    private NewsService newsService;
    @Autowired
    private Pagination pagination;

    @RequestMapping("findall")
    public ModelAndView findall(ModelAndView modelAndView, HttpServletRequest request) {
        int PageNo = NumberUtils.toInt(request.getParameter("pageNo"));
        LOGGER.debug("************************" + PageNo);
        //分页总数查询
        pagination.setRowCount(newsService.selectCountAllNews().longValue());
        //设置每页显示条数
        pagination.setPageSize(10);
        //设置开始页
        if(PageNo > 0 && PageNo <= pagination.getPageCount()){
            pagination.setPageNo(PageNo);
        }else{
            pagination.setPageNo(0);
        }
        pagination.setStartIndex();
        //新闻的列表显示
        List<News> newsList= newsService.selectTrueAllNews(pagination);
        LOGGER.debug("news json is ***************************" + newsList.size());
        modelAndView.setViewName("frontdesk/news/NewsAll");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist", newsList);

        modelAndView.addObject("pageCount", pagination.getPageCount());
        modelAndView.addObject("page", pagination);
        return modelAndView;
    }


    //新闻条件查询
    @RequestMapping("findNews")
    public ModelAndView findNews(ModelAndView modelAndView, HttpServletRequest request) {
        int PageNo = NumberUtils.toInt(request.getParameter("pageNo"));
        LOGGER.debug("************************" + PageNo);
        //设置每页显示条数
        pagination.setPageSize(10);
        //设置开始页
        if(PageNo > 0 && PageNo <= pagination.getPageCount()){
            pagination.setPageNo(PageNo);
        }else{
            pagination.setPageNo(0);
        }
        pagination.setStartIndex();
        pagination.setType(NumberUtils.toInt(request.getParameter("type")));
        //分页总数查询
        pagination.setRowCount(newsService.selectNewsConditionCount(pagination).longValue());
        //新闻的列表显示
        List<News> newsList= newsService.selectNewsCondition(pagination);
        LOGGER.debug("news json is ***************************" + newsList.size());
        modelAndView.setViewName("frontdesk/news/NewsList");
        modelAndView.addObject("menuType", "4");
        modelAndView.addObject("newslist", newsList);

        modelAndView.addObject("pageCount", pagination.getPageCount());
        modelAndView.addObject("page", pagination);
        return modelAndView;
    }
}
