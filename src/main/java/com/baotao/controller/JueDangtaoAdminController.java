package com.baotao.controller;


import com.baotao.service.BaotaoService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoConstant;
import com.baotao.bean.BaotaoCustom;

/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */


@Controller
@RequestMapping("/admin")
public class JueDangtaoAdminController {	
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoAdminController.class);
	@Autowired
	private BaotaoService baotaoService;
	private int nowpage=0;
	
	
	/**
	 * 编辑绝当淘页面
	 * @param modelAndView
	 * @param baotao
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toJueDangTaoEdit")
	public ModelAndView toJueDangTaoEdit(ModelAndView modelAndView,Baotao baotao,HttpServletRequest request) throws Exception{
		LOGGER.debug("go toJueDangTaoEdit page");
		
		baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		
		LOGGER.debug("find JueDangTao content");
		Baotao baotaotemp = baotaoService.find(baotao);			
		modelAndView.addObject("baotao", baotaotemp);
		

		
		
		String mark = request.getParameter("mark");
		if(StringUtils.isEmpty(mark)){
			nowpage=0;
		}else{
			nowpage = Integer.parseInt(mark);
		}
				
		LOGGER.debug("find JueDangTaoList content");
		BaotaoCustom baotaoCustom = new BaotaoCustom();
		baotaoCustom.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		//baotaoCustom.setState((nowpage-1)*3);
		if(nowpage==0){
			nowpage=1;
		}
		baotaoCustom.setStartindex((nowpage-1)*3);
		baotaoCustom.setMaxnum(3);

		List<Baotao> baotaoList = baotaoService.findAll(baotaoCustom);
		
		modelAndView.addObject("baotaoList", baotaoList);
		
		int count = baotaoService.findNum(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);
		modelAndView.addObject("count", count);
		
		modelAndView.addObject("nowpage", nowpage);
		
		

		
		modelAndView.setViewName("backstage/juedangtao/juedangtaoedit");
		return modelAndView;	
	}

	/**
	 * 提交编辑
	 * @param modelAndView
	 * @param content
	 * @param baotao
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/jueDangTaoEditSubmit",method=RequestMethod.POST)
	public ModelAndView jueDangTaoEditSubmit(ModelAndView modelAndView,String content,Baotao baotao) throws Exception{		
		
		LOGGER.debug("judge null of content");
		if(StringUtils.isBlank(content)){		
			baotao.setContent("内容不能为空！！！    请从新输入！！！");
			modelAndView.addObject("baotao",baotao);
			modelAndView.setViewName("backstage/juedangtao/juedangtaoedit");
			return modelAndView;			
		}
				
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
		modelAndView.setViewName("backstage/juedangtao/show");
		return modelAndView;	
	}
	/**
	 * 选择历史记录
	 * @param modelAndView
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/chooseJueDangTaoListEdit",method=RequestMethod.GET)
	public ModelAndView chooseJueDangTaoListEdit(ModelAndView modelAndView,HttpServletRequest request) throws Exception{		
	
		Baotao baotao = new Baotao();
		String temp = request.getParameter("updateId");
		if(StringUtils.isNotEmpty(temp)){
			int updateId = Integer.parseInt(temp);
			//把显示的隐藏	
			baotao.setState(BaotaoConstant.BAOTAO_STATE_NO);
			baotao.setType(BaotaoConstant.BAOTAO_JUEDANGTAO_TYPE);		
			baotaoService.update(baotao);
			//根据id把隐藏的显示
			baotao.setId(updateId);	
			baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);			
			baotaoService.update(baotao);
			
		}
		
		
		//显示
		LOGGER.debug("find new juedangtao/shouyitao content");
		Baotao baotaotemp = baotaoService.find(baotao);
		modelAndView.addObject("baotao",baotaotemp);
		modelAndView.setViewName("backstage/juedangtao/show");
		return modelAndView;
				
	
	}
	/**
	 * 删除记录
	 * @param modelAndView
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteJueDangTaoListEdit",method=RequestMethod.GET)
	public ModelAndView deleteJueDangTaoListEdit(ModelAndView modelAndView,HttpServletRequest request) throws Exception{
		
		String temp = request.getParameter("updateId");
		
		if(StringUtils.isNotEmpty(temp)){
			int updateId = Integer.parseInt(temp);
			baotaoService.delete(updateId);
		}
		
		
		
		modelAndView.setViewName("forward:toJueDangTaoEdit");
		return modelAndView;	
		
	}
	
}