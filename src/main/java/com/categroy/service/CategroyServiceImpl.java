package com.categroy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.categroy.bean.Categroy;
import com.categroy.dao.CategroyMapper;

@Service
public class CategroyServiceImpl implements CategroyService {
	
	@Autowired
	private CategroyMapper categroyMapper;
	
	public List<Categroy> findAll() throws Exception {
		// TODO Auto-generated method stub
		return categroyMapper.findAll();
	}

}
