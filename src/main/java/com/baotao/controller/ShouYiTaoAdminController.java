package com.baotao.controller;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@RequestMapping("/admin")
public class ShouYiTaoAdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	
	@Autowired
	private BaotaoServiceImpl baotaoService;
	
	@RequestMapping("/toShouYiTaoEdit")
	public ModelAndView toShouYiTaoEdit(ModelAndView modelAndView,Baotao baotao) throws Exception{
		LOGGER.debug("go ShouYiTaoEditedit page");
		baotao.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		
		LOGGER.debug("find shoyitao content");
		Baotao baotaotemp = baotaoService.find(baotao);
		
		modelAndView.addObject("baotao", baotaotemp);
		
		modelAndView.setViewName("backstage/shouyitao/shouyitaoedit");
		
		return modelAndView;	
	}
	
	
	
	@RequestMapping(value="/shouYiTaoEditSubmit",method=RequestMethod.POST)
	public ModelAndView shouYiTaoEditSubmit(ModelAndView modelAndView,Model model,String content,Baotao baotao) throws Exception{	
		
		LOGGER.debug("judge null of content");
		if(StringUtils.isBlank(content)){		
			baotao.setContent("内容不能为空！！！    请从新输入！！！");
			modelAndView.addObject("baotao",baotao);
			modelAndView.setViewName("backstage/shouyitao/shouyitaoedit");
			return modelAndView;			
		}
		
		
		//查找当前显示，若有状态置0（假删除）
		Baotao baotaoTemp = new Baotao();
		baotaoTemp.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
		baotaoTemp.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		LOGGER.debug("find old shouyitao content");
		Baotao baotaoTemp1 = baotaoService.find(baotaoTemp);		
		if(baotaoTemp1!=null){
		//	baotaoTemp1.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
			baotaoTemp1.setState(BaotaoConstant.BAOTAO_STATE_NO);
			baotaoService.update(baotaoTemp1);
		}		
		
		baotao.setContent(content);
		baotao.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
		baotaoService.addBaotao(baotao);
		
		//显示
		LOGGER.debug("find new shouyitao content");
		Baotao baotaotemp = baotaoService.find(baotaoTemp);		
		//model.addAttribute("editor", baotaotemp.getContent());
		modelAndView.addObject("baotao",baotaotemp);
		modelAndView.setViewName("backstage/shouyitao/show");
		return modelAndView;	
	}
	
	
	
	
	
}
