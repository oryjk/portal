package com.baotao.controller;


import com.baotao.service.BaotaoService;

import java.util.List;

import com.news.bean.News;
import com.news.constant.ConstantNews;
import com.news.service.NewsService;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.banner.bean.Banner;
import com.banner.bean.ConStantBannerType;
import com.banner.service.BannerService;
import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoConstant;

/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */


@Controller
@RequestMapping("/baotao")
public class JueDangtaoController {	
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	@Autowired
	private BaotaoService baotaoService;
	@Autowired
    private BannerService bannerService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private Pagination pagination;


	
	/**
	 * 显示绝当淘页面
	 * @param modelAndView
	 * @param baotao
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showJueDangTao")
	public ModelAndView showJueDangTao(ModelAndView modelAndView,Baotao baotao,Banner banner) throws Exception{
		LOGGER.debug("show juedangtao page");
		baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		LOGGER.debug("find new juedangtao content");
		Baotao baotaotemp = baotaoService.find(baotao);

		//model.addAttribute("editor1", intro1temp.getArticle());
		modelAndView.addObject("baotao", baotaotemp);
		modelAndView.addObject("menuType", "2");

		banner.setType(ConStantBannerType.JUEDANGTAO_TYPE);
		banner.setStatus(ConStantBannerType.SHOW_STATUS);
		List<Banner> banners=bannerService.selectTypeBanner(banner);
		modelAndView.addObject("banners",banners);

		//绝当淘新闻内容
		pagination.setPageSize(5);
		pagination.setPageNo(1);
		pagination.setType(ConstantNews.JUEDANGTAONEWS_TYPE);
		List<News> newsList= newsService.selectNewsCondition(pagination);
		modelAndView.addObject("newslist",newsList);

		modelAndView.setViewName("frontdesk/juedangtao/juedangtao");
		return modelAndView;
			
	
	}
	
}