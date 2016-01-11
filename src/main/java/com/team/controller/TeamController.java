package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqiang on 16-1-11.
 */
@Controller
@RequestMapping("admin")
public class TeamController {
    @RequestMapping("teamView")
    public ModelAndView view(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/team/view");
        return  modelAndView;
    }
}
