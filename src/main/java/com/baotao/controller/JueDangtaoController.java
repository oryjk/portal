package com.baotao.controller;


import com.baotao.service.BaotaoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	BaotaoService baotaoService;
	

	
	/**
	 * 显示绝当淘页面
	 * @param modelAndView
	 * @param baotao
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showJueDangTao")
	public ModelAndView showJueDangTao(ModelAndView modelAndView,Baotao baotao) throws Exception{
		LOGGER.debug("show juedangtao page");
		baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		LOGGER.debug("find new juedangtao content");
		Baotao baotaotemp = baotaoService.find(baotao);
		
		//model.addAttribute("editor1", intro1temp.getArticle());
		modelAndView.addObject("baotao", baotaotemp);
		modelAndView.addObject("menuType", "2");
		modelAndView.setViewName("frontdesk/juedangtao/juedangtao");
		return modelAndView;
			
	
	}
	
}