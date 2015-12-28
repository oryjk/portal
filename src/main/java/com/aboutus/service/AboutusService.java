package com.aboutus.service;

import com.aboutus.bean.Aboutus;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
public interface AboutusService {
    void insertAboutus(Aboutus aboutus);
    
    void deleteAboutus(int id);
    
    void updateAboutus(Aboutus aboutus);
    
    List<Aboutus> selectTrueAllAboutus();
    
    List<Aboutus> selectAllAboutus(int state);
    
    Aboutus selectAboutusById(int id);
    
    List<Aboutus> selectDateAboutus(int number);
    
    Aboutus find(Aboutus aboutus);
    
    void update(Aboutus aboutus);
}
