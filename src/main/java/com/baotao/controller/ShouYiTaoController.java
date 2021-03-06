package com.baotao.controller;

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
import com.baotao.service.BaotaoServiceImpl;
/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */
@Controller
@RequestMapping("/baotao")
public class ShouYiTaoController {
	private static final Logger LOGGER = LoggerFactory.getLogger(ShouYiTaoController.class);
	
	@Autowired
	private BaotaoServiceImpl baotaoService;
	@Autowired
    private BannerService bannerService;
	@Autowired
	private NewsService newsService;
	@Autowired
	private Pagination pagination;
	
	/**
	 * 显示收益淘页面
	 * @param modelAndView
	 * @param editor1
	 * @param baotao
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showShouYiTao")
	public ModelAndView showShouYiTao(ModelAndView modelAndView,Baotao baotao,Banner banner) throws Exception{
		LOGGER.debug("show shouyitao page");
		baotao.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);

		LOGGER.debug("find new shouyitao content");
		Baotao baotaotemp = baotaoService.find(baotao);

		//model.addAttribute("editor1", baotaotemp.getArticle());
		modelAndView.addObject("baotao", baotaotemp);
		modelAndView.addObject("menuType", "3");

		banner.setType(ConStantBannerType.SHOUYITAO_TYPE);
		banner.setStatus(ConStantBannerType.SHOW_STATUS);
		List<Banner> banners=bannerService.selectTypeBanner(banner);
		modelAndView.addObject("banners",banners);

		//绝当淘新闻内容
		pagination.setPageSize(5);
		pagination.setPageNo(1);
		pagination.setType(ConstantNews.SHOUYITAONEWS_TYPE);
		List<News> newsList= newsService.selectNewsCondition(pagination);
		modelAndView.addObject("newslist",newsList);

		modelAndView.setViewName("frontdesk/shouyitao/shouyitao");
		return modelAndView;
			
	
	}
	
	
}
