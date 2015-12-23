package com.media.service;

import com.media.dao.MediaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liqiang on 15-12-23.
 */
@Service
public class MediaService {
    @Autowired
    private MediaMapper mediaMapper;

    public void delMediaDateById(int i){
        mediaMapper.deleteMedia(i);
    }
}
