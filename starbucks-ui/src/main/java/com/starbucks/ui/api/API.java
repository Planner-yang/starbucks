package com.starbucks.ui.api;

/**
 * @ author xwj
 * @ date 2018/9/26 17:20
 */
public final class API {

    private API(){}

    /**
     * 主机地址
     */
    public static final String HTTP_HOST = "http://localhost:8082";

    /**
     * 版本号
     */
    public static final String HTTP_VERSION = "/v1";

    /**
     * 数据节点名称
     */
    public static final String nodeName = "data";

    /**
     * ItemCat/list接口名称
     */
    public static final String HTTP_ITEMCAT_LIST = "/ItemCat/list";

    /**
     * /ItemCat/getParentName接口名称
     */
    public static final String HTTP_ITEMCAT_GETPARENTNAME = "/ItemCat/getParentName";

    /**
     * /Item/list接口名称
     */
    public static final String HTTP_ITEM_LIST = "/Item/list";

}
