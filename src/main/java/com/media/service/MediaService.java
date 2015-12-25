package com.media.service;


import com.media.bean.Media;
import com.media.dao.MediaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



/**
 * Created by liqiang on 15-12-23.
 */
<<<<<<< HEAD
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

=======
public interface MediaService {
    void insertMedia(Media media);
    void deleteMedia(int id);
    void updateMedia(Media media);
    List<Media> selectAllMedia();
    Media selectMediaById(int id);
    List<Media> selectBannerMedia();

>>>>>>> dfe796904e090d1324a6acbe36e15552ef5cfa79
}
