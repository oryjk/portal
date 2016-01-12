package com.test;

import com.alibaba.fastjson.JSONObject;
import com.media.bean.Media;
import com.news.bean.News;
import com.news.constant.ConstantNews;
import com.news.dao.NewsMapper;
import com.news.service.NewsService;
import com.newscategroy.dao.NewsCategroyMapper;
import com.team.bean.Team;
import com.team.dao.TeamMapper;
import com.team.service.TeamService;
import com.utils.page.Pagination;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by dianjinzi on 29/12/15.
 */
//@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestTeam {
    private static final Logger LOGGER = LoggerFactory.getLogger(TestTeam.class);
    @Autowired
    TeamService teamService;

    @Test
    //分页按条件查询新闻
    public void TestPaginationNews(){
        Team team = new Team();
        team.setPhoto_url("11111111111111111");
        team.setUsername("张三");
        team.setUser_intro("自2003年开始鉴定典当品");
        team.setSkill("会鉴定珠宝玉石等等");
        int team_id = teamService.insertTeamUser(team);
        teamService.deleteTeamUser(12);
        LOGGER.debug("*********************" + team.getId().toString());
        team.setId(13);
        team.setUsername("李四");
        teamService.updateTeamUser(team);
        Media media = new Media();
        media.setUrl("222222222");
        media.setRelation(team_id);
        media.setType(5);

        Pagination pagination = new Pagination();
        pagination.setType(ConstantNews.HOTNEWS_TYPE);
        pagination.setPageSize(10);
        pagination.setPageNo(1);
        Team team2 = new Team();
        team2.setUsername("李四");
        pagination.setBean(team2);
        pagination.setRowCount(teamService.selectTeamUserConditionCount(pagination).longValue());
        LOGGER.debug(JSONObject.toJSONString("*******************" + teamService.selectTeamUserConditionCount(pagination).longValue()));
        LOGGER.debug(JSONObject.toJSONString("*******************" + JSONObject.toJSONString(teamService.selectTeamUserCondition(pagination))));
    }

}
