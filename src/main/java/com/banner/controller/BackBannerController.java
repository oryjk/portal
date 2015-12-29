package com.banner.controller;

import com.banner.service.BannerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangyirui on 29/12/15.
 */
@Controller
@RequestMapping("aaa")
public class BackBannerController {
    private static final Logger LOGGER = LoggerFactory.getLogger(BackBannerController.class);
    @Autowired
    private BannerService bannerService;

    @RequestMapping("/banner")
    public ModelAndView backBanner(ModelAndView modelAndView){


        modelAndView.setViewName("backstage/banner/upbanner");
        return modelAndView;
    }


}
