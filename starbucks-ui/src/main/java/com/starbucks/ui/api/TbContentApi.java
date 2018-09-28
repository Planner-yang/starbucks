package com.starbucks.ui.api;

import com.starbucks.commons.utils.HttpClientUtils;
import com.starbucks.commons.utils.MapperUtils;
import com.starbucks.ui.dto.TbContent;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/28 15:15
 */
public class TbContentApi {

    public static List<TbContent> ppt() {
        String json = HttpClientUtils.doGet(String.format("%s%s%s", API.HTTP_HOST, API.HTTP_VERSION, API.HTTP_CONTENT_PPT));

        try {
            return MapperUtils.json2list(json, API.nodeName, TbContent.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
