package com.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.bean.User;
import com.user.dao.UserMapper;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public User findName(User user) throws Exception {
		
		return userMapper.findName(user);
	}
	
	

}
