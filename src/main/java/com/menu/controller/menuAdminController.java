package com.menu.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.baotao.controller.JueDangtaoController;
import com.menu.bean.Menu;
import com.menu.bean.MenuQueryVo;
import com.menu.service.MenuService;
/**
 * 
 * @author HD
 *
 */
@Controller
@RequestMapping("/admin")
public class menuAdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(JueDangtaoController.class);
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/toMenuEdit")
	public ModelAndView menuEdit(ModelAndView modelAndView) throws Exception{
		
		List<Menu> menuEditList= menuService.findAll();
		modelAndView.addObject("menuEditList",menuEditList);
		modelAndView.setViewName("backstage/menu/menuedit");

		return modelAndView;
		
	}
	
	@RequestMapping("/addMenuEdit")
	public ModelAndView addMenuEdit(ModelAndView modelAndView) throws Exception{
		
		menuService.add();				
		
		List<Menu> menuEditList= menuService.findAll();
		modelAndView.addObject("menuEditList",menuEditList);
		modelAndView.setViewName("backstage/menu/menuedit");
		return modelAndView;
		
	}
	@RequestMapping("/deleteMenuEdit")
	public ModelAndView addMenuEdit(ModelAndView modelAndView,int did) throws Exception{
		
		menuService.delete(did);				
		
		List<Menu> menuEditList= menuService.findAll();
		modelAndView.addObject("menuEditList",menuEditList);
		modelAndView.setViewName("backstage/menu/menuedit");
		return modelAndView;
		
	}
	
	
	
	@RequestMapping("/menuEditListSubmit")
	public ModelAndView editItemsListSubmit(ModelAndView modelAndView,MenuQueryVo menuQueryVo) throws Exception{
		
		for(Menu menu: menuQueryVo.getMenuEditList()){
			menuService.update(menu);			
		}
		
		
		List<Menu> menuEditList= menuService.findAll();
		modelAndView.addObject("menuEditList",menuEditList);
		modelAndView.setViewName("backstage/menu/menuedit");
		return modelAndView;		
	}
	
	

}
