package com.team.controller;

import com.aboutus.bean.Aboutus;
import com.aboutus.bean.AboutusConstant;
import com.aboutus.service.AboutusService;
import com.team.service.TeamService;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqiang on 16-1-11.
 */
@Controller
@RequestMapping("aboutus")
public class TeamfrontController {
    private static final Logger LOGGER = LoggerFactory.getLogger(TeamfrontController.class);
    @Autowired
    private AboutusService aboutusService;
    @Autowired
    private TeamService teamService;

    @RequestMapping("showTeam")
    public ModelAndView view(ModelAndView modelAndView,Aboutus aboutus){
        aboutus.setType(AboutusConstant.ABOUTUS_TEAM_TYPE);
        aboutus.setState(AboutusConstant.ABOUTUS_STATE_SHOW);
        LOGGER.debug("find new SphereOfBusiness content");
        Aboutus aboutustemp = aboutusService.find(aboutus);
        if(aboutustemp!=null){
            modelAndView.addObject("aboutus", aboutustemp);
        }
        modelAndView.addObject("team_list",teamService.selectAll());
        modelAndView.setViewName("frontdesk/about-us/Expert-team");
        return  modelAndView;
    }
}
