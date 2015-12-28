package com.baotao.service;

import com.baotao.bean.Baotao;

public interface BaotaoService {
	
	void addBaotao(Baotao baotao) throws Exception;
	
	Baotao find(Baotao baotao) throws Exception;
	
	void update(Baotao baotao) throws Exception;
}
