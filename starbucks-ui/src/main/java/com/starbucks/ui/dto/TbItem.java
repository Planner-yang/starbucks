package com.starbucks.ui.dto;

import lombok.Data;

import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/27 11:22
 */
@Data
public class TbItem {
    public long id;
    private String title;
    private String sellPoint;
    private long price;
    private int num;
    private String barcode;
    private String image;

    private long cid;

    private Integer status;
    private Date created;
    private Date updated;
}
