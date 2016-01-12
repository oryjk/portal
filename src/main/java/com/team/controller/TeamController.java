package com.team.controller;

import com.alibaba.fastjson.JSONObject;
import com.news.bean.News;
import com.team.bean.Team;
import com.team.service.TeamService;
import com.utils.page.Pagination;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.json.Json;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liqiang on 16-1-11.
 */
@Controller
@RequestMapping("admin")
public class TeamController {
    private static final Logger LOGGER = LoggerFactory.getLogger(TeamController.class);
    @Autowired
    Pagination pagination;
    @Autowired
    TeamService teamService;

    @RequestMapping("teamView")
    public ModelAndView view(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/team/view");
        return  modelAndView;
    }

    @RequestMapping("team_table")
    public ModelAndView team_table(ModelAndView modelAndView){
        modelAndView.setViewName("backstage/team/index");
        return  modelAndView;
    }

    @RequestMapping("team_datagrid")
    @ResponseBody
    public String datagrid(@RequestParam("page") int pages , @RequestParam("rows") int rows){
        LOGGER.debug("news select method");
        Pagination pagination = new Pagination();
        pagination.setPageSize(rows);
        pagination.setPageNo(pages);
        pagination.setRowCount(teamService.selectTeamUserConditionCount(pagination).longValue());
        //设置开始页
        List<Team> newsesList= teamService.selectTeamUserCondition(pagination);
        LOGGER.debug("news json is" + JSONObject.toJSONString(newsesList));
        Map<String,Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("rows",newsesList);
        jsonMap.put("total", teamService.selectTeamUserConditionCount(pagination).longValue());
        LOGGER.debug(JSONObject.toJSONString(jsonMap));
        return JSONObject.toJSONString(jsonMap);
    }

    @RequestMapping("team_del")
    @ResponseBody
    public String team_del(@RequestParam("id") int id){
        teamService.deleteTeamUser(id);
        return null;
    }

    @RequestMapping("team_edit_view")
    public ModelAndView team_edit_view(@RequestParam("id") int id, ModelAndView modelAndView){
        Team team = teamService.selectTeamById(id);
        LOGGER.debug("******************************" + team.getPhoto_url().toString());
        modelAndView.setViewName("backstage/team/teamEdit");
        modelAndView.addObject("team", team);
        return  modelAndView;
    }

    @RequestMapping("team_alter")
    @ResponseBody
    public String team_alter(Team team){
        LOGGER.debug("************" + team.getId());
        LOGGER.debug(".............................................................." + JSONObject.toJSONString(team));
        teamService.updateTeamUser(team);
        return null;
    }


    @RequestMapping("team_add")
    public ModelAndView team_add(ModelAndView modelAndView,Team team){
        teamService.insertTeamUser(team);
        modelAndView.setViewName("backstage/team/view");
        return  modelAndView;
    }
}
