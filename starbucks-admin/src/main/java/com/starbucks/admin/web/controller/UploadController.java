package com.starbucks.admin.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @ author xwj
 * @ date 2018/9/14 20:03
 */
@RestController
@RequestMapping(value = "upload")
public class UploadController {

    private static final String UPLOAD_PATH = "/static/images/items";

    @RequestMapping(value = "image",method = RequestMethod.POST)
    public Map<String,Object> image(MultipartFile dropFile, HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();


        String uploadPath = fileUpload(dropFile,request);

        result.put("fileName", uploadPath);

        return result;
    }

    private String fileUpload(MultipartFile dropFile, HttpServletRequest request) {
        // 获取上传的原始文件名
        String fileName = dropFile.getOriginalFilename();
        // 设置文件上传路径
        String filePath = request.getSession().getServletContext().getRealPath(UPLOAD_PATH);
        // 获取文件后缀
        String fileSuffix = fileName.substring(fileName.lastIndexOf("."), fileName.length());
        //新文件名
        String newFileName = UUID.randomUUID() + fileSuffix;
        // 判断并创建上传用的文件夹
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        // 重新设置文件名为 UUID，以确保唯一
        file = new File(filePath, newFileName);

        try {
            // 写入文件
            dropFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }


        return newFileName;
    }
}
