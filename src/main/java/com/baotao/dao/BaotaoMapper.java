package com.baotao.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.baotao.bean.Baotao;
import com.base.mapper.SqlMapper;

@Component
public interface BaotaoMapper extends SqlMapper {
	 
	void addBaotao(Baotao baotao)throws Exception;	
	 
	 Baotao find(Baotao baotao)throws Exception;
	
	 void update(Baotao baotao)throws Exception;
	 
	 List<Baotao> findAll(Baotao baotao)throws Exception;
}
 