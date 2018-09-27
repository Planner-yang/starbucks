package com.starbucks.commons.utils;



import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * @ author xwj
 * @ date 2018/9/21 11:23
 */
public final class HttpClientUtils {

    private HttpClientUtils() {}

    /**
     * get方式发送请求
     * @param url
     * @return
     */
    public static String doGet(String url) {
        CloseableHttpResponse httpResponse = null;
        try {
            // 创建 HttpClient 客户端
            CloseableHttpClient httpClient = HttpClients.createDefault();

            //创建 HttpGet请求
            HttpGet httpGet = new HttpGet(url);

            //请求响应结果
            httpResponse = httpClient.execute(httpGet);
            HttpEntity entity = httpResponse.getEntity();

            //返回结果
            return EntityUtils.toString(entity);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                httpResponse.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

    /**
     * post请求方式
     * @param url
     * @return
     */
    public static String doPost(String url) {
        CloseableHttpResponse httpResponse = null;
        try {
            // 创建 HttpClient 客户端
            CloseableHttpClient httpClient = HttpClients.createDefault();

            //创建 HttpPost请求
            HttpPost httpPost = new HttpPost(url);

            //请求响应结果
            httpResponse = httpClient.execute(httpPost);
            HttpEntity entity = httpResponse.getEntity();

            //返回结果
            return EntityUtils.toString(entity);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                httpResponse.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;
    }
}
