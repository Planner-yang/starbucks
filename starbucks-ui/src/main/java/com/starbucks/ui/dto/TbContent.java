package com.starbucks.ui.dto;

import lombok.Data;

import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/28 15:17
 */
@Data
public class TbContent {
    private long id;
    private long categoryId;
    private String title;
    private String subTitle;
    private String pic;
    private Date created;
    private Date updated;
}
