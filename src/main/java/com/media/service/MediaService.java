package com.media.service;

import com.media.dao.MediaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by dianjinzi on 23/12/15.
 */
@Service
public class MediaService {
    @Autowired
    private MediaMapper mediaMapper;


}
