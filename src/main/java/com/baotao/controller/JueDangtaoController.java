package com.baotao.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.baotao.service.BaotaoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoConstant;
import com.baotao.service.BaotaoServiceImpl;
import com.menu.bean.Menu;
import com.menu.service.MenuService;
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
	
	/*@RequestMapping("/ueditor")
	public ModelAndView ueditor(ModelAndView modelAndView)throws Exception{
		
		modelAndView.setViewName("backstage/baotao/controller");
		return modelAndView;
	
	}*/

	
	
	@RequestMapping("/toJueDangTaoEdit")
	public ModelAndView toJueDangTaoEdit(ModelAndView modelAndView,Baotao baotao) throws Exception{
		LOGGER.debug("go toJueDangTaoEdit page");
		baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		
		LOGGER.debug("find JueDangTao content");
		Baotao baotaotemp = baotaoService.find(baotao);
		
		modelAndView.addObject("baotao", baotaotemp);
		
		modelAndView.setViewName("backstage/juedangtao/juedangtaoedit");
		
		return modelAndView;	
	}

	
	@RequestMapping(value="/jueDangTaoEditSubmit",method=RequestMethod.POST)
	public ModelAndView jueDangTaoEditSubmit(ModelAndView modelAndView,String content,Baotao baotao) throws Exception{	
		
		//查找当前显示，若有状态置0（假删除）
		Baotao baotaoTemp = new Baotao();
		baotaoTemp.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotaoTemp.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		LOGGER.debug("find old juedangtao/shouyitao content");
		Baotao baotaoTemp1 = baotaoService.find(baotaoTemp);		
		if(baotaoTemp1!=null){
		//	baotaoTemp1.setType(BaotaoConstant.BAOTAO_SHOUYIBAO_TYPE);
			baotaoTemp1.setState(BaotaoConstant.BAOTAO_STATE_NO);
			baotaoService.update(baotaoTemp1);
		}		
		
		baotao.setContent(content);
		baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotaoService.addBaotao(baotao);
		
		//显示
		LOGGER.debug("find new juedangtao/shouyitao content");
		Baotao baotaotemp = baotaoService.find(baotaoTemp);
		modelAndView.addObject("baotao",baotaotemp);
		modelAndView.setViewName("backstage/juedangtao/showshouyitao");
		return modelAndView;	
	}
	
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