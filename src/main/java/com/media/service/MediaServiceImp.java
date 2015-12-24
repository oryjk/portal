package com.media.service;

import com.media.bean.Media;
import com.media.dao.MediaMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by dianjinzi on 24/12/15.
 */
@Service
public class MediaServiceImp implements MediaService{
    private static final Logger LOGGER= LoggerFactory.getLogger(MediaServiceImp.class);

    @Autowired
    private MediaMapper mediaMapper;

    @Override
    public void insertMedia(Media media) {
        try {
            mediaMapper.insertMedia(media);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when create a media");
        }
    }

    @Override
    public void deleteMedia(int id) {
        try {
            mediaMapper.deleteMedia(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when delete a media");
        }
    }

    @Override
    public void updateMedia(Media media) {
        try {
            mediaMapper.updateMedia(media);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when update a media");
        }
    }

    @Override
    public List<Media> selectAllMedia() {
        List<Media> list=null;
        try {
            mediaMapper.selectAllMedia();
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectAll a media");
        }
        return list;
    }

    @Override
    public Media selectMediaById(int id) {
        Media media=null;
        try {
            media=mediaMapper.selectMediaById(id);
        }catch (Exception e){
            LOGGER.error("Some thing wrong when selectById a media");
        }
        return media;
    }
}
