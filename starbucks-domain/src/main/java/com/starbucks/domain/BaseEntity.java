package com.starbucks.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/9/25 15:50
 */
@Data
public abstract class BaseEntity implements Serializable {

    public long id;
    public int start;
    public int length;
    public Date created;
    public Date updated;
}
