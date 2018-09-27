package com.starbucks.api.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/26 13:55
 */
@Data
public class TbItemCatDTO implements Serializable {

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
