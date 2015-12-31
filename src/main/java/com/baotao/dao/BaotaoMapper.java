package com.baotao.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoCustom;
import com.base.mapper.SqlMapper;
/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */
@Component
public interface BaotaoMapper extends SqlMapper {
	 
	void addBaotao(Baotao baotao)throws Exception;	
	 
	 Baotao find(Baotao baotao)throws Exception;
	
	 void update(Baotao baotao)throws Exception;
	 
	 List<Baotao> findAll(BaotaoCustom baotaoCustom)throws Exception;
	 
	 int findNum(int type)throws Exception;
	 
	 void delete(int id)throws Exception;
}
 