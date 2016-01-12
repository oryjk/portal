package com.aboutus.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aboutus.bean.Aboutus;
import com.aboutus.bean.AboutusConstant;
import com.aboutus.service.AboutusService;
import com.baotao.controller.JueDangtaoController;
import com.categroy.bean.CategroyConstant;
/**
 * 
 * @author hd
 *
 */
@Controller
@RequestMapping("/aboutus")
public class CompanyIntroductionController {
	private static final Logger LOGGER = LoggerFactory.getLogger(CompanyIntroductionController.class);
	@Autowired
	AboutusService  aboutusService;
	
	
	@RequestMapping("/showCompanyIntroduction")
	public ModelAndView showCompanyIntroduction(ModelAndView modelAndView,Aboutus aboutus) throws Exception{
		LOGGER.debug("show CompanyIntroduction page");
		
		aboutus.setType(AboutusConstant.ABOUTUS_COMPANYINTRODUCTION_TYPE);
		aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
		
		LOGGER.debug("find new CompanyIntroduction content");
		Aboutus aboutusTemp = aboutusService.find(aboutus);
		modelAndView.addObject("aboutus",aboutusTemp);
		modelAndView.addObject("menuType", "5");
		modelAndView.addObject("categroyType", CategroyConstant.CATEGROY_COMPANYINTRODUCTION);
		modelAndView.setViewName("frontdesk/about-us/company-introduction");
		return modelAndView;
			
	
	}
}
