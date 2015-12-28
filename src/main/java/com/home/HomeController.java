package com.home;

import com.banner.bean.Banner;
import com.banner.bean.ConStantBannerType;
import com.banner.service.BannerService;
import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoConstant;
import com.baotao.service.BaotaoService;
import com.companyintro.bean.CompanyIntro;
import com.companyintro.service.CompanyIntroService;
import com.media.service.MediaService;
import com.news.bean.News;
import com.news.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Controller
//@RequestMapping
public class HomeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
    @Autowired
    private BaotaoService baotaoService;
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
    public ModelAndView index(ModelAndView modelAndView,Baotao baotao)throws Exception{
        LOGGER.debug("view is  home page");

        List<News> news=newsService.selectDateNews(5);
        modelAndView.addObject("news",news);

        baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
        baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
        baotao= baotaoService.find(baotao);
        String juedangtao=baotao.getContent().substring(0,200)+"......";
        modelAndView.addObject("juedangtao",juedangtao);

        baotao.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
        baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
        baotao= baotaoService.find(baotao);
        String shouyitao=baotao.getContent().substring(0,200)+"......";
        modelAndView.addObject("shouyitao",shouyitao);




        List<CompanyIntro> companyIntros=companyIntroService.selectDateCompanyIntro(1);
        CompanyIntro companyIntro=null;
        for (int i=0;i<companyIntros.size();i++){
            companyIntro=companyIntros.get(i);
        }
        modelAndView.addObject("companyIntro",companyIntro);
        List<Banner> banners=bannerService.selectTypeBanner(conStantBannerType.HOME_TYPE);
        modelAndView.addObject("banners",banners);
        modelAndView.addObject("menuType", "1");
        modelAndView.setViewName ("frontdesk/home/home");
        return modelAndView;
    }

}
