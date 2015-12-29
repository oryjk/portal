package com.aboutus.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aboutus.bean.Aboutus;
import com.aboutus.bean.AboutusConstant;
import com.aboutus.service.AboutusService;
import com.baotao.controller.JueDangtaoController;

@Controller
@RequestMapping("/aboutus")
public class ContactUsAdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	
	@Autowired
	AboutusService  aboutusService;


	@RequestMapping("/contactUsEdit")
	public ModelAndView contactUsEdit(ModelAndView modelAndView,Aboutus aboutus) throws Exception{
		LOGGER.debug("edit ContactUs page");
		
		aboutus.setType(AboutusConstant.ABOUTUS_CONTACTUS_TYPE);
		aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		LOGGER.debug("find old ContactUs content");
		Aboutus aboutustemp = aboutusService.find(aboutus);
		if(aboutustemp!=null){
			modelAndView.addObject("aboutus", aboutustemp);
		}

		modelAndView.setViewName("backstage/about-us/contact-us-edit");
		return modelAndView;

	}


	@RequestMapping(value="/contactUsEditSubmit",method=RequestMethod.POST)
	public ModelAndView SphereOfBusinessEditSubmit(ModelAndView modelAndView,String content,Aboutus aboutus) throws Exception{	
		
		if(content==null){
			//modelAndView.addObject("");
			return modelAndView;
		}
		
		
		//查找当前显示，若有状态置0（假删除）
		Aboutus aboutusTemp = new Aboutus();
		aboutusTemp.setType(AboutusConstant.ABOUTUS_CONTACTUS_TYPE);
		aboutusTemp.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		LOGGER.debug("find old contactUs content");
		Aboutus aboutusTemp1 = aboutusService.find(aboutusTemp);		
		if(aboutusTemp1!=null){
			aboutusTemp1.setState(AboutusConstant.ABOUTUS_STATE_NO);
			aboutusService.update(aboutusTemp1);
		}		

		
		aboutus.setType(AboutusConstant.ABOUTUS_CONTACTUS_TYPE);
		aboutus.setContent(content);
		aboutusService.insertAboutus(aboutus);
		
		//显示
		LOGGER.debug("find new contactUs content");
		Aboutus aboutusTemp11 = aboutusService.find(aboutusTemp);
		modelAndView.addObject("aboutus",aboutusTemp11);
		modelAndView.setViewName("backstage/about-us/show");
		return modelAndView;	
	}

	
}
