package com.utils.file;

import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by liqiang on 27/12/15.
 */
/*
@Controller
public class FileController {
    @RequestMapping("fileUpload")
    public String fileUpload(@RequestParam("file") MultipartFile file) {
        if (!file.isEmpty()) {
            String filePath = "c:";
            file.transferTo(new File(filePath));
            return filePath;
        }
        return null;
    }
}
*/
