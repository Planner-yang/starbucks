package com.starbucks.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/26 22:20
 */
@Data
public class TbItemDTO implements Serializable {
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
