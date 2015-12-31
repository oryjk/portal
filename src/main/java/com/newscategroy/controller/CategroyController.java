package com.newscategroy.controller;

import com.alibaba.fastjson.JSONObject;
import com.media.bean.Media;
import com.media.service.MediaService;
import com.news.bean.News;
import com.news.service.NewsService;
import com.newscategroy.bean.NewsCategroy;
import com.newscategroy.dao.NewsCategroyMapper;
import com.utils.file.ImageUtils;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liqiang on 15-12-24.
 */
@Controller
@RequestMapping("admin")
public class CategroyController {
    private static final Logger LOGGER = LoggerFactory.getLogger(CategroyController.class);
    @Autowired
    private NewsCategroyMapper newsCategroyMapper;
    @Autowired
    private Pagination pagination;

    @RequestMapping("NewCategroyTable")
    @ResponseBody
    public String categroyTable(@RequestParam("page") int pages , @RequestParam("rows") int rows) {
        LOGGER.debug("NewCategroyTable select method");
        //分页总数查询
        pagination.setRowCount(newsCategroyMapper.selectNewsCountCategroy().longValue());
        //设置每页显示条数
        pagination.setPageSize(rows);
        //设置开始页
        pagination.setPageNo(pages);
        List<NewsCategroy> newsesList= newsCategroyMapper.selectAllNewsCategroy(pagination);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsesList));
        Map<String,Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("rows",newsesList);
        jsonMap.put("total", newsCategroyMapper.selectNewsCountCategroy());
        LOGGER.debug(JSONObject.toJSONString(jsonMap));
        return JSONObject.toJSONString(jsonMap);
    }

    @RequestMapping("NewcategroyView")
    public ModelAndView views(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/news/categroy");
        return modelAndView;
    }

    @RequestMapping("NewcategroyView/del")
    public @ResponseBody String NewcategroyViewDel(@RequestParam int id){
        newsCategroyMapper.deleteNewsCategroy(id);
        return "success";
    }

    @RequestMapping("NewcategroyEditView")
    public ModelAndView NewcategroyEditView(@RequestParam int id,ModelAndView modelAndView){
        modelAndView.addObject("newsCategroy_id", id);
        modelAndView.setViewName("backstage/news/categroyEdit");
        return modelAndView;
    }

    @RequestMapping("NewcategroyEdit")
    public ModelAndView NewcategroyEdit(NewsCategroy newsCategroy,ModelAndView modelAndView,@RequestParam String name){
        modelAndView.setViewName("backstage/news/categroyEdit");
        newsCategroy.setName(name);
        newsCategroyMapper.updateNewsCategroy(newsCategroy);
        return modelAndView;
    }

    @RequestMapping("NewcategroyAddView")
    public ModelAndView NewcategroyAddView(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/news/categroyAdd");
        return modelAndView;
    }

    @RequestMapping("NewcategroyAdd")
    public ModelAndView NewcategroyAdd(NewsCategroy newsCategroy,ModelAndView modelAndView){
        modelAndView.setViewName("backstage/news/categroyAdd");
        newsCategroyMapper.insertNewsCategroy(newsCategroy);
        return modelAndView;
    }
}