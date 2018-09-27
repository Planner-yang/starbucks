package com.starbucks.commons.utils;

import org.apache.commons.lang3.StringUtils;

import java.util.Random;

/**
 * @ author xwj
 * @ date 2018/9/25 17:31
 */
public class IDUtils {

    public static long count = 0;
    public static int idLength = 3;

    public static long generateId () {
        long currentTimeMillis = System.currentTimeMillis();
        long random = (long) (100 + Math.random() * 899);
        count++;

        if (String.valueOf(count).length() > idLength) {
            count = 0;
        }

        String strId = String.format("%s%s%s", currentTimeMillis, random, StringUtils.leftPad(String.valueOf(count), idLength, "0"));
        return Long.parseLong(strId);
    }

}
