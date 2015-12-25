package com.media.service;


import com.media.bean.Media;
import com.media.dao.MediaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



/**
 * Created by liqiang on 15-12-23.
 */
public interface MediaService {
    void insertMedia(Media media);
    void deleteMedia(int id);
    void updateMedia(Media media);
    List<Media> selectAllMedia();
    Media selectMediaById(int id);
    List<Media> selectBannerMedia();

}
