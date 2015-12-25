package com.companyintro.service;

import com.companyintro.bean.CompanyIntro;
import com.companyintro.dao.CompanyIntroMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Service
public class CompanyIntroServiceImp implements CompanyIntroService{
    private static final Logger LOGGER= LoggerFactory.getLogger(CompanyIntroServiceImp.class);
    @Autowired
    CompanyIntroMapper companyIntroMapper;

    @Override
    public void insertCompanyIntro(CompanyIntro companyIntro) {
        try {
            companyIntroMapper.insertCompanyIntro(companyIntro);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when create a companyIntro");
        }
    }

    @Override
    public void deleteCompanyIntro(int id) {
        try {
            companyIntroMapper.deleteCompanyIntro(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when delete a companyIntro");
        }
    }

    @Override
    public void updateCompanyIntro(CompanyIntro companyIntro) {
        try {
            companyIntroMapper.updateCompanyIntro(companyIntro);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when update a companyIntro");
        }
    }

    @Override
    public List<CompanyIntro> selectTrueAllCompanyIntro() {
        List<CompanyIntro> list=null;
        try {
            list=companyIntroMapper.selectTrueAllCompanyIntro();
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectTrue a companyIntro");
        }
        return list;
    }

    @Override
    public List<CompanyIntro> selectAllCompanyIntro(int state) {
        List<CompanyIntro> list=null;
        try {
            list=companyIntroMapper.selectAllCompanyIntro(state);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectAll a companyIntro");
        }
        return list;
    }

    @Override
    public CompanyIntro selectCompanyIntroById(int id) {
        CompanyIntro companyIntro=null;
        try {
            companyIntro=companyIntroMapper.selectCompanyIntroById(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectById a companyIntro");
        }
        return companyIntro;
    }

    @Override
    public List<CompanyIntro> selectDateCompanyIntro(int number) {
        List<CompanyIntro> list=null;
        try {
            list=companyIntroMapper.selectDateCompanyIntro(number);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectDate a companyIntro");
        }
        return list;
    }
}
