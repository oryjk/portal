package com.companyintro.controller;

import com.companyintro.bean.CompanyIntro;
import com.companyintro.service.CompanyIntroService;
import com.media.bean.Media;
import com.media.service.MediaService;
import com.news.bean.News;
import com.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Controller
@RequestMapping("company")
public class companyController {
    @Autowired
    private MediaService mediaService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private CompanyIntroService companyIntroService;


    @RequestMapping("companyAdd")
    public ModelAndView companyAdd(ModelAndView modelAndView){
        modelAndView.setViewName ("companyAdd");
        return modelAndView;
    }

}
