package com.starbucks.ui.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/26 17:26
 */
@Data
public class TbItemCat {

    public long id;
    public long parentId;
    public String name;
    public int status;
    public int sortOrder;
    public Date created;
    public Date updated;

    @JsonProperty(value = "isParent")
    public boolean isParent;
}
