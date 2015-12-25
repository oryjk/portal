package com.companyintro.dao;

import com.base.mapper.SqlMapper;
import com.companyintro.bean.CompanyIntro;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by dianjinzi on 25/12/15.
 */
@Component
public interface CompanyIntroMapper extends SqlMapper{
    void insertCompanyIntro(CompanyIntro companyIntro);
    void deleteCompanyIntro(int id);
    void updateCompanyIntro(CompanyIntro companyIntro);
    List<CompanyIntro> selectTrueAllCompanyIntro();
    List<CompanyIntro> selectAllCompanyIntro(int state);
    CompanyIntro selectCompanyIntroById(int id);
    List<CompanyIntro> selectDateCompanyIntro(int number);
}
