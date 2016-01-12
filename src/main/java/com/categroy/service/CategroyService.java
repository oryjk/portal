package com.categroy.service;

import java.util.List;

import com.categroy.bean.Categroy;
import com.menu.bean.Menu;

public interface CategroyService {
	List<Categroy>findAll()throws Exception;
	
	void add() throws Exception;

	void delete(int did) throws Exception;

	void update(Categroy categroy)throws Exception;
}
