package com.starbucks.api.service;

import com.starbucks.domain.TbItemCat;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 14:00
 */

public interface TbItemCatService {
    List<TbItemCat> selectByPid(long parentId);

    TbItemCat getById(long id);
}
