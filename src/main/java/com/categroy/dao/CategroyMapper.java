package com.categroy.dao;

import java.util.List;

import com.base.mapper.SqlMapper;
import com.categroy.bean.Categroy;
import com.menu.bean.Menu;

public interface CategroyMapper extends SqlMapper {
	
	List<Categroy> findAll()throws Exception;
	
	int findNum() throws Exception;
	
	void add(int num) throws Exception;

	void delete(int did) throws Exception;

	void update(Categroy categroy)throws Exception;

}
