package com.aboutus.service;

import com.aboutus.bean.Aboutus;
import com.aboutus.bean.AboutusConstant;
import com.aboutus.dao.AboutusMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Service
public class AboutusServiceImp implements AboutusService{
    private static final Logger LOGGER= LoggerFactory.getLogger(AboutusServiceImp.class);

    @Autowired
    private AboutusMapper aboutusMapper;

    @Override
    public void insertAboutus(Aboutus aboutus) {
        try {
        	aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
            aboutusMapper.insertAboutus(aboutus);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when create a aboutus");
        }
    }

    @Override
    public void deleteAboutus(int id) {
        try {
            aboutusMapper.deleteAboutus(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when delete a aboutus");
        }
    }

    @Override
    public void updateAboutus(Aboutus aboutus) {
        try {
            aboutusMapper.updateAboutus(aboutus);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when update a aboutus");
        }
    }

    @Override
    public List<Aboutus> selectTrueAllAboutus() {
        List<Aboutus> list=null;
        try {
            list=aboutusMapper.selectTrueAllAboutus();
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectTrueAll a aboutus");
        }
        return  list;
    }

    @Override
    public List<Aboutus> selectAllAboutus(int state) {
        List<Aboutus> list=null;
        try {
            list=aboutusMapper.selectAllAboutus(state);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectAll a aboutus");
        }
        return  list;
    }

    @Override
    public Aboutus selectAboutusById(int id) {
        Aboutus aboutus=null;
        try {
           aboutus=aboutusMapper.selectAboutusById(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectAll a aboutus");
        }
        return aboutus;
    }

    @Override
    public List<Aboutus> selectDateAboutus(int number) {
        List<Aboutus> list=null;
        try {
            list=aboutusMapper.selectDateAboutus(number);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectDate a aboutus");
        }
        return  list;
    }
    @Override
	public Aboutus find(Aboutus aboutus) {
    	
    	if(aboutusMapper.find(aboutus)==null)
    		return null;
    	
    	return aboutusMapper.find(aboutus);
	}
    @Override
	public void update(Aboutus aboutus) {
		// TODO Auto-generated method stub
		aboutusMapper.update(aboutus);
	}
}
