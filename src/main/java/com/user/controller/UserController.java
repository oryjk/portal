package com.user.controller;

import com.common.util.MD5;
import com.common.util.ResourcesUtil;
import com.user.bean.User;
import com.user.service.UserService;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.hibernate.action.spi.Executable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.apache.shiro.authc.UnknownAccountException;

import javax.servlet.http.HttpSession;
/**
 * 
 * @author woniu_hd on 12/26/15.
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	
	// @RequestMapping(value="/login",method=RequestMethod.POST)
	@RequestMapping("/loginSubmit")
	public ModelAndView login(ModelAndView modelAndView, String checkCode, HttpSession session, User user)
			throws Exception {

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

		if (StringUtils.isBlank(checkCode)) {
			modelAndView.addObject("verificationcodenotnull",
			ResourcesUtil.getValue("errorInformation", "verificationcode.notnull"));			
			modelAndView.setViewName("common/login");
			return modelAndView;
		}


		if (!checkCode.equalsIgnoreCase((String) session.getAttribute("randCheckCode"))) {
			modelAndView.addObject("verificationcodeerror", ResourcesUtil.getValue("errorInformation", "verificationcode.error"));
			modelAndView.setViewName("common/login");
			return modelAndView;

		}else{
			MD5 md51 = new MD5();
			String str1 = md51.getMD5ofStr(user.getPassword());
			UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getUsername(),str1);
			Subject subject = SecurityUtils.getSubject();
			try{
				subject.login(usernamePasswordToken);
				if(subject.isAuthenticated()){
					modelAndView.setViewName("redirect:/admin/main");
					return modelAndView;
				}
			}
			catch (Exception e){
				modelAndView.addObject("passworderror", ResourcesUtil.getValue("errorInformation", "password.error"));
				modelAndView.setViewName("common/login");
			}
		}
		return modelAndView;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView modelAndView, HttpSession session) throws Exception {
		// 清除session内容
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		modelAndView.setViewName("common/login");
		return modelAndView;
	}
}
