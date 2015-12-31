package com.menu.service;

import java.util.List;
/**
 * 
 * @author woniu_hd on 12/26/15.
 *
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.menu.bean.Menu;
import com.menu.dao.MenuMapper;
@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper menuMapper;
	
	public List<Menu> findAll() throws Exception {
		return menuMapper.findAll();
	}

	public void add() throws Exception {
		int num = menuMapper.findNum();
		menuMapper.add(num+1);
		
	}

	public void delete(int did) throws Exception {
		menuMapper.delete(did);
	}

	public void update(Menu menu) throws Exception {
		menuMapper.update(menu);
		
	}

}
