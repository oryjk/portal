package com.media.controller;

import com.media.service.MediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by liqiang on 15-12-23.
 */
@Controller
public class MediaController {
    @Autowired
    private MediaService mediaService;

    @RequestMapping("/media")
    public ModelAndView query(ModelAndView modelAndView){
        modelAndView.setViewName("image/upimage");
        modelAndView.addObject("media", mediaService.findAll());
        return  modelAndView;
    }
}
