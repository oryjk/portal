package com.team.service;

import com.media.bean.Media;
import com.news.bean.News;
import com.news.dao.NewsMapper;
import com.news.service.NewsService;
import com.team.bean.Team;
import com.team.dao.TeamMapper;
import com.utils.page.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Service
public class TeamServiceImp implements TeamService{
    private static final Logger LOGGER= LoggerFactory.getLogger(TeamServiceImp.class);

    @Autowired
    private TeamMapper teamMapper;

    public Integer insertTeamUser(Team team){
        teamMapper.insertTeamUser(team);
        return team.getId();
    }

    public void deleteTeamUser(int id){
        teamMapper.deleteTeamUser(id);
    }

    public void updateTeamUser(Team team){
        teamMapper.updateTeamUser(team);
    }

    public List<Team> selectTeamUserCondition(Pagination pagination){
        return teamMapper.selectTeamUserCondition(pagination);
    }

    public Integer selectTeamUserConditionCount(Pagination pagination){
        return teamMapper.selectTeamUserConditionCount(pagination);
    }

    public Team selectTeamById(int id){
        return teamMapper.selectTeamById(id);
    }

    public List<Team> selectAll(){
        return teamMapper.selectAll();
    }
}