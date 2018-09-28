package com.starbucks.domain;


import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.Length;

import java.io.Serializable;

/**
 * @ author xwj
 * @ date 2018/9/11 14:53
 */
@Data
@EqualsAndHashCode(callSuper=true)
public class TbContent extends BaseEntity implements Serializable {

    private TbContentCategory tbContentCategory;
    @Length(min = 1, max = 50, message = "标题长度必须介于 1 到 50 位之间")
    private String title;
    private String subTitle;
    private String pic;

}
