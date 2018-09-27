package com.starbucks.ui.api;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.starbucks.commons.utils.HttpClientUtils;
import com.starbucks.commons.utils.MapperUtils;
import com.starbucks.ui.dto.TbItemCat;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 17:25
 */
public class TbItemCatApi {

    public static List<TbItemCat> list(long parentId) {
        String json = HttpClientUtils.doGet(String.format("%s%s%s?parentId=" + parentId, API.HTTP_HOST, API.HTTP_VERSION, API.HTTP_ITEMCAT_LIST));
        try {
            return MapperUtils.json2list(json, API.nodeName, TbItemCat.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static TbItemCat getParentName(long id) {
        String json = HttpClientUtils.doGet(String.format("%s%s%s?id=" + id, API.HTTP_HOST, API.HTTP_VERSION, API.HTTP_ITEMCAT_GETPARENTNAME));
        try {
            // 创建 ObjectMapper 对象
            ObjectMapper mapper = new ObjectMapper();

            //反序列化到树
            JsonNode jsonNode = mapper.readTree(json);

            //从树中读取data节点
            JsonNode jsonData = jsonNode.findPath(API.nodeName);

            System.out.println(jsonData.toString());

            return MapperUtils.json2pojo(jsonData.toString(), TbItemCat.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
