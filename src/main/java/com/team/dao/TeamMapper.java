package com.team.dao;

import com.base.mapper.SqlMapper;
import com.media.bean.Media;
import com.team.bean.Team;
import com.utils.page.Pagination;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by dianjinzi on 23/12/15.
 */
@Component
public interface TeamMapper extends SqlMapper{
    Integer insertTeamUser(Team team);
    void deleteTeamUser(int id);
    void updateTeamUser(Team Team);
    List<Team> selectTeamUserCondition(Pagination pagination);
    Integer selectTeamUserConditionCount(Pagination pagination);
    Team selectTeamById(int id);
    List<Team> selectAll();
}