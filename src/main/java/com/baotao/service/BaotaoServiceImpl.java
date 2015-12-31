package com.baotao.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotao.bean.Baotao;
import com.baotao.bean.BaotaoConstant;
import com.baotao.bean.BaotaoCustom;
import com.baotao.dao.BaotaoMapper;
/**
 * 
 * @author woniu_hd on 12/23/15.
 *
 */
@Service
public class BaotaoServiceImpl implements BaotaoService {
	@Autowired
	BaotaoMapper baotaoMapper;
	
	public void addBaotao(Baotao baotao) throws Exception{
		baotao.setDate(new Date());		
		baotao.setState(BaotaoConstant.BAOTAO_STATE_SHOW);
		baotaoMapper.addBaotao(baotao);
	}
	
	public Baotao find(Baotao baotao) throws Exception{
		
		return baotaoMapper.find(baotao);
	}
	
	public void update(Baotao baotao) throws Exception{
		baotaoMapper.update(baotao);
			
	}
	
	public List<Baotao> findAll(BaotaoCustom baotaoCustom) throws Exception {
		
		return baotaoMapper.findAll(baotaoCustom);
	}
	
	public int findNum(int type) throws Exception {
		
		return baotaoMapper.findNum(type);
	}
	
	public void delete(int id) throws Exception {
		baotaoMapper.delete(id);		
	}
	
	
}
