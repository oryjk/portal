package com.companyintro.service;

import com.companyintro.bean.CompanyIntro;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
public interface CompanyIntroService {
    void insertCompanyIntro(CompanyIntro companyIntro);
    void deleteCompanyIntro(int id);
    void updateCompanyIntro(CompanyIntro companyIntro);
    List<CompanyIntro> selectTrueAllCompanyIntro();
    List<CompanyIntro> selectAllCompanyIntro(int state);
    CompanyIntro selectCompanyIntroById(int id);
    List<CompanyIntro> selectDateCompanyIntro(int number);
}
