package com.menu.service;

import java.util.List;


import com.menu.bean.Menu;
/**
 * 
 * @author woniu_hd
 *
 */
public interface MenuService {
	List<Menu>findAll()throws Exception;

	void add() throws Exception;

	void delete(int did) throws Exception;

	void update(Menu menu)throws Exception;
}
