package com.banner.controller;

import com.banner.bean.Banner;
import com.banner.service.BannerService;
import com.utils.file.ImageUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangyirui on 29/12/15.
 */
@Controller
@RequestMapping("admin")
public class BackBannerController {
    private static final Logger LOGGER = LoggerFactory.getLogger(BackBannerController.class);
    @Autowired
    private BannerService bannerService;

    @Autowired
    private ImageUtils imageUtils;

    @RequestMapping("/banner")
    public ModelAndView backBanner(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/banner/upbanner");
        return modelAndView;
    }

    @RequestMapping("/filebanner")
    public ModelAndView filebanner(ModelAndView modelAndView,MultipartFile file, HttpServletRequest request,Banner banner) {
        LOGGER.debug("*******************fileUpload post");
        String name = null;
        try {
            name = imageUtils.uploadImage(file, request);
        } catch (Exception e) {
            LOGGER.error("Some thing wrong when fileUpload");
        }
        Integer type = Integer.parseInt(request.getParameter("type"));
        if (!"false".equals(name)) {
            banner.setType(type);
            banner.setUrl(name);
            bannerService.insertBanner(banner);
            modelAndView.addObject("upload","上传成功");//上传成功
        }else {
            modelAndView.addObject("upload","上传失败");//上传失败

        }
        modelAndView.setViewName("backstage/banner/upbanner");
        return modelAndView;
    }

    @RequestMapping("/querybanner")
    public  ModelAndView querybanner(ModelAndView modelAndView){
        List<Banner> banners=bannerService.selectBanner();
        modelAndView.addObject("banners",banners);
        modelAndView.setViewName("backstage/banner/indexbanner");
        return modelAndView;
    }

    @RequestMapping("/deletebanner")
    public ModelAndView deletebanner(ModelAndView modelAndView,Banner banners){
        if(banners!=null){
            bannerService.deleteBanner(banners.getBanner_id());
        }
        modelAndView.setViewName("forward:querybanner");
        return modelAndView;
    }

    @RequestMapping("/modifybanner")
    public ModelAndView modifybanner(ModelAndView modelAndView,Banner banner){
        if(banner!=null){
            bannerService.updateBanner(banner);
        }
        return modelAndView;
    }

}
