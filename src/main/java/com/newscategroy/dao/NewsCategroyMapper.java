package com.newscategroy.dao;

import com.base.mapper.SqlMapper;
import com.newscategroy.bean.NewsCategroy;
import com.utils.page.Pagination;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by dianjinzi on 24/12/15.
 */
@Component
public interface NewsCategroyMapper extends SqlMapper{
    Integer selectNewsCountCategroy();
    NewsCategroy insertNewsCategroy();
    Integer deleteNewsCategroy(int newsCategroy_id);
    NewsCategroy updateNewsCategroy();
    List<NewsCategroy> selectAllNewsCategroy(Pagination pagination);
    NewsCategroy selectNewsCategroyById(int newsCategroy_id);
}
