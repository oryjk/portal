package com.categroy.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.alibaba.fastjson.JSONObject;
import com.categroy.bean.CategroyList;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.categroy.bean.Categroy;
import com.categroy.service.CategroyService;
import com.menu.bean.Menu;
import com.menu.bean.MenuQueryVo;
/**
 * 
 * @author hd
 *
 */
@Controller
@RequestMapping("/admin")
public class CategroyAdminController {
	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(CategroyAdminController.class);

	@Autowired
	private CategroyService categroyService;
	
	
	@RequestMapping("/toCategroyEdit")
	public ModelAndView menuEdit(ModelAndView modelAndView) throws Exception{
		
		List<Categroy> categroyEditList= categroyService.findAll();
		modelAndView.addObject("categroyEditList",categroyEditList);
		modelAndView.setViewName("backstage/categroy/categroyedit");

		return modelAndView;
		
	}
	
	@RequestMapping("/addCategroyEdit")
	public ModelAndView addMenuEdit(ModelAndView modelAndView) throws Exception{
		
		categroyService.add();				
		
		List<Categroy> categroyEditList= categroyService.findAll();
		modelAndView.addObject("categroyEditList",categroyEditList);
		modelAndView.setViewName("backstage/categroy/categroyedit");
		return modelAndView;
		
	}
	@RequestMapping("/deleteCategroyEdit")
	public ModelAndView addMenuEdit(ModelAndView modelAndView,int did) throws Exception{
		
		categroyService.delete(did);				
		
		List<Categroy> categroyEditList= categroyService.findAll();
		modelAndView.addObject("categroyEditList",categroyEditList);
		modelAndView.setViewName("backstage/categroy/categroyedit");
		return modelAndView;
		
	}
	
	@RequestMapping("/categroyEditListSubmit")
	public ModelAndView editItemsListSubmit(ModelAndView modelAndView,CategroyList categroy) throws Exception{
		for(Categroy cate : categroy.getCategroy()){
			categroyService.update(cate);
		}
		return menuEdit(modelAndView);
	}

}
