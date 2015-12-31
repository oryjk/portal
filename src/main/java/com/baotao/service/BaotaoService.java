package com.baotao.service;

import java.util.List;

import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoCustom;
/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */
public interface BaotaoService {
	
	void addBaotao(Baotao baotao) throws Exception;
	
	Baotao find(Baotao baotao) throws Exception;
	
	List<Baotao> findAll(BaotaoCustom baotaoCustom) throws Exception;
	
	void update(Baotao baotao) throws Exception;

	int findNum(int baotaoJuedangtaoType) throws Exception;
	
	void delete(int id)throws Exception;
}
