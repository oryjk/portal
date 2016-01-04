package com.categroy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.categroy.bean.Categroy;
import com.categroy.dao.CategroyMapper;
import com.menu.bean.Menu;

@Service
public class CategroyServiceImpl implements CategroyService {
	
	@Autowired
	private CategroyMapper categroyMapper;
	
	public List<Categroy> findAll() throws Exception {
		// TODO Auto-generated method stub
		return categroyMapper.findAll();
	}
	
	public void add() throws Exception {
		int num = categroyMapper.findNum();
		categroyMapper.add(num+1);
		
	}

	public void delete(int did) throws Exception {
		categroyMapper.delete(did);
	}

	public void update(Menu menu) throws Exception {
		categroyMapper.update(menu);
		
	}

}
