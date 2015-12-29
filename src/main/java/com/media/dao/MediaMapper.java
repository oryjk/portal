package com.media.dao;

import com.base.mapper.SqlMapper;
import com.media.bean.Media;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangyirui on 23/12/15.
 */
@Component
public interface MediaMapper  extends SqlMapper{
    void insertMedia(Media media);
    void deleteMedia(int id);
    void updateMedia(Media media);
    List<Media> selectAllMedia();
    Media selectMediaById(int id);
    List<Media> selectBannerMedia();
    Media selectRelationMedia(int relation);
}
