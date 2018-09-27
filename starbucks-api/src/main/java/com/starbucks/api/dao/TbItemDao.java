package com.starbucks.api.dao;

import com.starbucks.api.dto.TbItemDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 22:23
 */
@Repository
public interface TbItemDao {

    List<TbItemDTO> selectAll();

    TbItemDTO getById(long id);

    List<TbItemDTO> getByCid(long cid);
}
