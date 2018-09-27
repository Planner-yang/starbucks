package com.starbucks.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @ author xwj
 * @ date 2018/9/25 15:49
 */
@Data
@EqualsAndHashCode(callSuper=true)
public class TbItem extends BaseEntity implements Serializable{

    private TbItemCat tbItemCat;

    @NotNull
    @Length(min = 1, max = 100, message = "商品标题长度必须是1-100之间")
    private String title;
    @NotNull
    private String sellPoint;
    @NotNull
    private long price;
    @NotNull
    private int num;
    private String barcode;
    private String image;
    @NotNull
    @Range(min=1, max=3, message = "1-正常，2-下架，3-删除")
    private Integer status;
}
