package com.team.service;

import com.media.bean.Media;
import com.team.bean.Team;
import com.utils.page.Pagination;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
public interface TeamService {
    Integer insertTeamUser(Team team);
    void deleteTeamUser(int id);
    void updateTeamUser(Team Team);
    List<Team> selectTeamUserCondition(Pagination pagination);
    Integer selectTeamUserConditionCount(Pagination pagination);
    Team selectTeamById(int id);
}