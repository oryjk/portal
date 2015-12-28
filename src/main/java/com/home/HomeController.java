package com.home;

import com.banner.bean.Banner;
import com.banner.bean.ConStantBannerType;
import com.banner.service.BannerService;
import com.companyintro.bean.CompanyIntro;
import com.companyintro.service.CompanyIntroService;
import com.media.bean.Media;
import com.media.service.MediaService;
import com.news.bean.News;
import com.news.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Controller
@RequestMapping
public class HomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
    @Autowired
    private MediaService mediaService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private CompanyIntroService companyIntroService;
    @Autowired
    private BannerService bannerService;
    @Autowired
    private ConStantBannerType conStantBannerType;

    @RequestMapping("home")
    public ModelAndView index(ModelAndView modelAndView){
        LOGGER.debug("view is  home page");

        List<News> news=newsService.selectDateNews(5);
        List<String> dates=new ArrayList<String>();
//        for (int i=0;i<news.size();i++){
//            Date date=news.get(i).getDate();
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//            String newDate = sdf.format(date);
//            dates.add(newDate);
//            dates.add(news.get(i).getNews_id().toString());
//        }
        modelAndView.addObject("newDate",dates);
        modelAndView.addObject("news",news);
        List<CompanyIntro> companyIntros=companyIntroService.selectDateCompanyIntro(1);
        CompanyIntro    companyIntro=null;
        for (int i=0;i<companyIntros.size();i++){
            companyIntro=companyIntros.get(i);
        }
        modelAndView.addObject("companyIntro",companyIntro);
        List<Banner> banners=bannerService.selectTypeBanner(conStantBannerType.HOME_TYPE);
        modelAndView.addObject("banners",banners);
        modelAndView.setViewName ("frontdesk/home/home");
        return modelAndView;
    }

}
