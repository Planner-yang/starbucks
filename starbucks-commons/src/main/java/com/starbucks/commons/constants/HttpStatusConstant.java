package com.starbucks.commons.constants;

/**
 * @ author xwj
 * @ date 2018/9/19 21:40
 */
public final class HttpStatusConstant {


    private HttpStatusConstant() {

    }

    public static final int HTTP_500 = 500;
    public static final String HTTP_500_CODE = "Internal Server Error";
    public static final String HTTP_500_MESSAGE = "服务器内部错误";
    public static final String HTTP_500_CAUSE = "服务器遇到了一个未曾预料的状况,导致了它无法完成对请求的处理.";
}
