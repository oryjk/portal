package com.baotao.service;

import com.baotao.bean.Baotao;

public interface BaotaoService {
	
	public void addBaotao(Baotao baotao) throws Exception;
	
	public Baotao find(Baotao baotao) throws Exception;
	
	public void update(Baotao baotao) throws Exception;
}
