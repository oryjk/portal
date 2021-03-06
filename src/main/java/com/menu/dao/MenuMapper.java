package com.menu.dao;

import java.util.List;

import com.base.mapper.SqlMapper;
import com.menu.bean.Menu;
/**
 * 
 * @author woniu_hd on 12/26/15.
 *
 */
public interface MenuMapper  extends SqlMapper {
	List<Menu> findAll()throws Exception;

	int findNum() throws Exception;

	void add(int num) throws Exception;

	void delete(int did) throws Exception;

	void update(Menu menu)throws Exception;
	
}
