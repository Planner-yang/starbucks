package com.starbucks.api.dao;

import com.starbucks.domain.TbItemCat;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 13:57
 */
@Repository
public interface TbItemCatDao {

    List<TbItemCat> selectByPid(long parentId);

    TbItemCat getById(long id);
}
