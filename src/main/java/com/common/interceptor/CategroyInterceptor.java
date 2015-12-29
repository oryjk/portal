package com.common.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.categroy.bean.Categroy;
import com.categroy.service.CategroyService;
import com.menu.bean.Menu;
import com.menu.service.MenuService;


public class CategroyInterceptor implements HandlerInterceptor {
	
	@Autowired
	private CategroyService categroyService;

	
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
	
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		
		List<Categroy> categroyList = categroyService.findAll();
		request.setAttribute("categroyList", categroyList);
	
		return true;
	}
	


}
