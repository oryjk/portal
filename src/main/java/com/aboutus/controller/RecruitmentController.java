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
public class RecruitmentController {
	
private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	
@Autowired
AboutusService  aboutusService;


@RequestMapping("/recruitmentEdit")
public ModelAndView recruitmentEdit(ModelAndView modelAndView,Aboutus aboutus) throws Exception{
	LOGGER.debug("edit  Recruitment page");
	
	aboutus.setType(AboutusConstant.ABOUTUS_RECRUITMENT_TYPE);
	aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
	LOGGER.debug("find new Recruitment content");
	Aboutus aboutustemp = aboutusService.find(aboutus);
	if(aboutustemp!=null){
		modelAndView.addObject("aboutus", aboutustemp);
	}
	
	modelAndView.setViewName("backstage/about-us/recruitment-edit");
	return modelAndView;

}


@RequestMapping(value="/recruitmentEditSubmit",method=RequestMethod.POST)
public ModelAndView SphereOfBusinessEditSubmit(ModelAndView modelAndView,String content,Aboutus aboutus) throws Exception{	
	
	if(content==null){
		//modelAndView.addObject("");
		return modelAndView;
	}
	
	
	//查找当前显示，若有状态置0（假删除）
	Aboutus aboutusTemp = new Aboutus();
	aboutusTemp.setType(AboutusConstant.ABOUTUS_RECRUITMENT_TYPE);
	aboutusTemp.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
	LOGGER.debug("find old recruitment content");
	Aboutus aboutusTemp1 = aboutusService.find(aboutusTemp);		
	if(aboutusTemp1!=null){
		aboutusTemp1.setState(AboutusConstant.ABOUTUS_STATE_NO);
		aboutusService.update(aboutusTemp1);
	}		

	
	aboutus.setType(AboutusConstant.ABOUTUS_RECRUITMENT_TYPE);
	aboutus.setContent(content);
	aboutusService.insertAboutus(aboutus);
	
	//显示
	LOGGER.debug("find new recruitment content");
	Aboutus aboutusTemp11 = aboutusService.find(aboutusTemp);
	modelAndView.addObject("aboutus",aboutusTemp11);
	modelAndView.setViewName("backstage/about-us/show");
	return modelAndView;	
}



	@RequestMapping("/showRecruitment")
	public ModelAndView showRecruitment(ModelAndView modelAndView, Aboutus aboutus) throws Exception {
		LOGGER.debug("show Recruitment page");
		
		aboutus.setType(AboutusConstant.ABOUTUS_RECRUITMENT_TYPE);
		aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		
		LOGGER.debug("find new CompanyIntroduction content");
		Aboutus aboutusTemp = aboutusService.find(aboutus);
		modelAndView.addObject("aboutus",aboutusTemp);
		
		
		modelAndView.setViewName("frontdesk/about-us/recruitment");
		return modelAndView;

	}

}
