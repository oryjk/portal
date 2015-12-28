package com.aboutus.dao;

import com.aboutus.bean.Aboutus;
import com.base.mapper.SqlMapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Component
public interface AboutusMapper extends SqlMapper{
	
    void insertAboutus(Aboutus aboutus);
    
    void deleteAboutus(int id);
    
    void updateAboutus(Aboutus aboutus);
    
    List<Aboutus> selectTrueAllAboutus();
    
    List<Aboutus> selectAllAboutus(int state);
    
    Aboutus selectAboutusById(int id);
    
    List<Aboutus> selectDateAboutus(int number);
    
    
    Aboutus find(Aboutus aboutus);
    
    void update(Aboutus about);
}
