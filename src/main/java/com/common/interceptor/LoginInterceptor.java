package com.common.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.common.util.ResourcesUtil;

public class LoginInterceptor  implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		
		
		
		List<String> urlList = ResourcesUtil.gekeyList("openActions");

		String url = request.getRequestURI();
		
		for (String open_url : urlList) {
			if (url.indexOf(open_url) > 0) {
				return true;
			}
		}

		// 判断用户身份是否在session中存在
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("name");
		// 如果用户身份在session中存在就放行
		if (username != null) {
			return true;
		}
		// 执行到这里拦截，跳转到登录页面，用户进行身份认证
		response.sendRedirect("/portal");
		return false;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}



	

}
