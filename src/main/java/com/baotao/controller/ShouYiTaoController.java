package com.baotao.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	
	@Autowired
	BaotaoServiceImpl baotaoService;
	
	
	/**
	 * 显示收益淘页面
	 * @param modelAndView
	 * @param editor1
	 * @param baotao
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showShouYiTao")
	public ModelAndView showShouYiTao(ModelAndView modelAndView,Baotao baotao) throws Exception{
		LOGGER.debug("show shouyitao page");
		baotao.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		
		LOGGER.debug("find new shouyitao content");
		Baotao baotaotemp = baotaoService.find(baotao);
		
		//model.addAttribute("editor1", baotaotemp.getArticle());
		modelAndView.addObject("baotao", baotaotemp);
		modelAndView.addObject("menuType", "3");
		modelAndView.setViewName("frontdesk/shouyitao/shouyitao");
		return modelAndView;
			
	
	}
	
	
}
