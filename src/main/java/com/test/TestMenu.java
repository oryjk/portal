package com.test;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.menu.bean.Menu;
import com.menu.dao.MenuMapper;

public class TestMenu {
	@Autowired
	private MenuMapper menuMapper;
	
	@Test
	public void test() throws Exception{
		List<Menu> list= menuMapper.findAll();
		
		for(Menu m:list){			
			System.out.println(m.getName());
		}
	}
}
