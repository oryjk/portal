package com.user.controller;

import com.common.util.ResourcesUtil;
import com.user.bean.User;
import com.user.service.UserService;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// @RequestMapping(value="/login",method=RequestMethod.POST)
	@RequestMapping("/loginSubmit")
	public ModelAndView login(ModelAndView modelAndView, String checkCode, HttpSession session, User user)
			throws Exception {

		
		if (StringUtils.isBlank(checkCode)) {
			modelAndView.addObject("verificationcodenotnull",
			ResourcesUtil.getValue("errorInformation", "verificationcode.notnull"));			
			modelAndView.setViewName("common/login");
			return modelAndView;
		}


		if (!checkCode.equalsIgnoreCase((String) session.getAttribute("randCheckCode"))) {
			modelAndView.addObject("verificationcodeerror",
					ResourcesUtil.getValue("errorInformation", "verificationcode.error"));
			modelAndView.setViewName("common/login");
			return modelAndView;

		}

		if (StringUtils.isBlank(user.getUsername())) {
			modelAndView.addObject("usernamenotnull", ResourcesUtil.getValue("errorInformation", "username.notnull"));
			modelAndView.setViewName("common/login");
			return modelAndView;
		}
		if (StringUtils.isBlank(user.getPassword())){
			modelAndView.addObject("passwordnotnull", ResourcesUtil.getValue("errorInformation", "password.notnull"));
			modelAndView.setViewName("common/login");
			return modelAndView;
		}

		User userTemp = userService.findName(user);
		modelAndView.addObject("user", user);
		if (userTemp != null) {
			if ((userTemp.getPassword() == user.getPassword()) || (userTemp.getPassword().equals(user.getPassword()))) {
				session.setAttribute("username", user.getUsername());
				// 登录成功
				modelAndView.setViewName("backstage/admin/index");
				return modelAndView;

			}
			// 密码错误
			modelAndView.addObject("passworderror", ResourcesUtil.getValue("errorInformation", "password.error"));
			modelAndView.setViewName("common/login");
			return modelAndView;
		}
		modelAndView.addObject("usernameerror", ResourcesUtil.getValue("errorInformation", "username.error"));
		modelAndView.setViewName("common/login");
		return modelAndView;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView modelAndView, HttpSession session) throws Exception {
		// 清除session内容
		session.invalidate();
		modelAndView.setViewName("common/login");
		return modelAndView;
	}
}
