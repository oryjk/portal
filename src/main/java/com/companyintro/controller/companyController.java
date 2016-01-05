package com.companyintro.controller;

import com.companyintro.bean.CompanyIntro;
import com.companyintro.service.CompanyIntroService;
import com.media.service.MediaService;
import com.news.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Controller
@RequestMapping("admin")
public class companyController {
    private static final Logger LOGGER = LoggerFactory.getLogger(companyController.class);
    @Autowired
    private MediaService mediaService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private CompanyIntroService companyIntroService;


    @RequestMapping("/company")
    public ModelAndView companyAdd(ModelAndView modelAndView){
        modelAndView.setViewName ("backstage/company/companyAdd");
        return modelAndView;
    }

    @RequestMapping("/uploadcompany")
    public ModelAndView uploadCompany(ModelAndView modelAndView,String content,CompanyIntro companyIntro){
        LOGGER.debug("*********************"+content);
        if (content!=null) {
            companyIntro.setArticle(content);
            companyIntro.setState(0);
            companyIntro.setTitle("公司简介");
            companyIntro.setBanner_id(1);
            companyIntroService.insertCompanyIntro(companyIntro);
        }
        modelAndView.setViewName("forward:querycompany");
        return modelAndView;

    }

    @RequestMapping("/querycompany")
    public ModelAndView querycompany(ModelAndView modelAndView){
        List<CompanyIntro> companyIntros=companyIntroService.selectTrueAllCompanyIntro();
        modelAndView.addObject("companyIntros",companyIntros);
        modelAndView.setViewName("backstage/company/indexcompany");
        return modelAndView;
    }

    @RequestMapping("/deletecompany")
    public ModelAndView deletecompany(ModelAndView modelAndView,CompanyIntro companyIntro){
        if (companyIntro!=null){
            LOGGER.debug("*******************"+companyIntro);
            companyIntroService.deleteCompanyIntro(companyIntro.getCompanyintro_id());
        }
        modelAndView.setViewName("forward:querycompany");
        return modelAndView;
    }

    @RequestMapping("/modifycompany")
    public ModelAndView modifycompany(ModelAndView modelAndView,CompanyIntro companyIntro){
        if(companyIntro!=null){
            companyIntroService.updateCompanyIntro(companyIntro);
        }
        modelAndView.setViewName("forward:querycompany");
        return modelAndView;
    }

    @RequestMapping("/querymodifycompany")
    public ModelAndView querymodifycompany(ModelAndView modelAndView,CompanyIntro companyIntro){
        Integer id=companyIntro.getCompanyintro_id();
        companyIntro=companyIntroService.selectCompanyIntroById(id);
        companyIntro.setCompanyintro_id(id);
        modelAndView.addObject("companyIntro",companyIntro);
        modelAndView.setViewName("backstage/company/updatecompany");

        return modelAndView;
    }

}