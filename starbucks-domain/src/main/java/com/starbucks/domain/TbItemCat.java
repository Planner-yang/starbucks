package com.starbucks.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @ author xwj
 * @ date 2018/9/25 15:58
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class TbItemCat extends BaseTreeEntity {
    private String parentName;
}
