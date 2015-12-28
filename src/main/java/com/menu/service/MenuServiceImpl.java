package com.menu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.menu.bean.Menu;
import com.menu.dao.MenuMapper;
@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper menuMapper;
	
	public List<Menu> findAll() throws Exception {
		// TODO Auto-generated method stub
		return menuMapper.findAll();
	}

}
