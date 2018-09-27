package com.starbucks.ui.api;

import com.starbucks.commons.utils.HttpClientUtils;
import com.starbucks.commons.utils.MapperUtils;
import com.starbucks.ui.dto.TbItem;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/27 11:24
 */
public class TbItemApi {

    /**
     * 根据cId查询商品
     * @param cId
     * @return
     */
    public static List<TbItem> list(long cid) {

        try {
            String json = HttpClientUtils.doGet(String.format("%s%s%s?cid=" + cid, API.HTTP_HOST, API.HTTP_VERSION, API.HTTP_ITEM_LIST));
            return MapperUtils.json2list(json, API.nodeName, TbItem.class);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
