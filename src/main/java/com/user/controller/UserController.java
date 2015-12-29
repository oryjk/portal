package com.user.controller;

import com.user.bean.User;
import com.user.dao.UserMapper;
import com.user.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;




@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	//@RequestMapping(value="/login",method=RequestMethod.POST)
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView modelAndView,HttpSession session, User user) throws Exception {

		User userTemp = userService.findName(user);
		modelAndView.addObject("user", user);
		if (userTemp!= null) {
			if ((userTemp.getPassword() == user.getPassword()) || (userTemp.getPassword().equals(user.getPassword()))) {
				session.setAttribute("username", user.getUsername());
				// 登录成功
				modelAndView.setViewName("backstage/admin/index");
			    return modelAndView;
				

			}
			// 密码错误

			modelAndView.setViewName("common/login");
			return modelAndView;
		}
		modelAndView.setViewName("common/login");
		return modelAndView;
	}
	
	
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView modelAndView,HttpSession session)throws Exception{
		//清除session内容
		session.invalidate();	
		modelAndView.setViewName("common/login");
		return modelAndView;
	}
}
