package com.aboutus.controller;

import org.apache.commons.lang3.StringUtils;
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
/**
 * 
 * @author hd
 *
 */
@Controller
@RequestMapping("/admin")
public class CompanyIntroductionAdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(CompanyIntroductionAdminController.class);
	@Autowired
	AboutusService  aboutusService;
	
	
	@RequestMapping("/companyIntroductionEdit")
	public ModelAndView companyIntroductionEdit(ModelAndView modelAndView,Aboutus aboutus) throws Exception{
		LOGGER.debug("edit CompanyIntroduction page");
		
		aboutus.setType(AboutusConstant.ABOUTUS_COMPANYINTRODUCTION_TYPE);
		aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		LOGGER.debug("find new juedangtao content");
		Aboutus aboutustemp = aboutusService.find(aboutus);
		if(aboutustemp!=null){
			modelAndView.addObject("aboutus", aboutustemp);
		}
	
		modelAndView.setViewName("backstage/about-us/company-introduction-edit");
		return modelAndView;
	
	}
	

	@RequestMapping(value="/companyIntroductionEditSubmit",method=RequestMethod.POST)
	public ModelAndView CompanyIntroductionEditSubmit(ModelAndView modelAndView,String content,Aboutus aboutus) throws Exception{	
		
		LOGGER.debug("judge null of content");
		if(StringUtils.isBlank(content)){		
			aboutus.setContent("内容不能为空！！！    请从新输入！！！");
			modelAndView.addObject("aboutus",aboutus);
			modelAndView.setViewName("backstage/about-us/company-introduction-edit");
			return modelAndView;			
		}
		
		
		//查找当前显示，若有状态置0（假删除）
		Aboutus aboutusTemp = new Aboutus();
		aboutusTemp.setType(AboutusConstant.ABOUTUS_COMPANYINTRODUCTION_TYPE);
		aboutusTemp.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		LOGGER.debug("find old companyIntroduction content");
		Aboutus aboutusTemp1 = aboutusService.find(aboutusTemp);		
		if(aboutusTemp1!=null){

			aboutusTemp1.setState(AboutusConstant.ABOUTUS_STATE_NO);
			aboutusService.update(aboutusTemp1);
		}		

		
		aboutus.setType(AboutusConstant.ABOUTUS_COMPANYINTRODUCTION_TYPE);
		aboutus.setContent(content);
		aboutusService.insertAboutus(aboutus);
		
		//显示
		LOGGER.debug("find new CompanyIntroduction content");
		Aboutus aboutusTemp11 = aboutusService.find(aboutusTemp);
		modelAndView.addObject("aboutus",aboutusTemp11);
		modelAndView.setViewName("backstage/about-us/show");
		return modelAndView;	
	}
	
	
}
