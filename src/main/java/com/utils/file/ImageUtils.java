package com.utils.file;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by liqiang on 27/12/15.
 */

@Component("ImageUtils")
public class ImageUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(ImageUtils.class);

    public String uploadImage(MultipartFile file, HttpServletRequest request) throws Exception{
        String path = request.getRealPath("/resources/core/images/banner") + file.getOriginalFilename();
        LOGGER.debug(file.toString());
        LOGGER.debug("start upload");
        if (!file.isEmpty()) {
            File localFile = new File(path);
            if(!localFile.exists()){
                localFile.mkdir();
            }
            file.transferTo(localFile);
            return "resources/core/images/banner" + file.getOriginalFilename();
        }
        LOGGER.debug("success upload");
        return "false";
    }
}