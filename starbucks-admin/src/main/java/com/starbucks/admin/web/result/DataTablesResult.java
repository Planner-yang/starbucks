package com.starbucks.admin.web.result;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/4 21:45
 */
@Data
public class DataTablesResult<T> implements Serializable {
    private int draw;
    private int recordsTotal;
    private int recordsFiltered;
    private List<T> data;

}
