package com.starbucks.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * @ author xwj
 * @ date 2018/9/7 11:42
 */
@Data
@EqualsAndHashCode(callSuper=true)
public class TbContentCategory extends BaseTreeEntity implements Serializable {


    private String parentName;

}
