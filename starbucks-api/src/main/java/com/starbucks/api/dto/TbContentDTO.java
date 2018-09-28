package com.starbucks.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/28 14:28
 */
@Data
public class TbContentDTO implements Serializable {
    private long id;
    private long categoryId;
    private String title;
    private String subTitle;
    private String pic;
    private Date created;
    private Date updated;

}
