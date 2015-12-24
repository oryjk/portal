package com.media.service;


import com.media.bean.Media;
import com.media.dao.MediaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



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

    public List<Media> findAll(){
        return mediaMapper.selectAllMedia();
    }

}
