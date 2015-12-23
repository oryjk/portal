package com.test;

import com.media.bean.Media;
import com.media.dao.MediaMapper;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by dianjinzi on 23/12/15.
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-core-config.xml")
public class TestMedia {
    @Autowired
    private MediaMapper mediaMapper;

    @Test
    public void TestInsertMedia(){
        Media media=new Media();
        media.setUrl("6666");
        media.setType(3);
        media.setRelation(77);
        mediaMapper.insertMedia(media);
    }

    @Test
    public void TestDeleteMedia(){
        mediaMapper.deleteMedia(4);
    }

    @Test
    public void TestUpdateMedia(){
        Media media=new Media();
        media.setMedia_id(2);
        media.setUrl("6655");
        media.setType(3344);
        media.setRelation(7766);
        mediaMapper.updateMedia(media);
    }

    @Test
    public void TestSelectAllMedia(){
        List list=mediaMapper.selectAllMedia();
        System.out.print(list);
    }

    @Test
    public void TestSelectMediaById(){
        Media media=mediaMapper.selectMediaById(2);
        System.out.print(media);
    }


}
