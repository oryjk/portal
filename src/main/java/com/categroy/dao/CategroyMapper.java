package com.categroy.dao;

import java.util.List;

import com.base.mapper.SqlMapper;
import com.categroy.bean.Categroy;

public interface CategroyMapper extends SqlMapper {
	
	List<Categroy> findAll()throws Exception;

}
