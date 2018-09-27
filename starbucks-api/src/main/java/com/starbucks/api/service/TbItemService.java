package com.starbucks.api.service;

import com.starbucks.api.dto.TbItemDTO;


import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 22:25
 */
public interface TbItemService {

    List<TbItemDTO> selectAll();

    TbItemDTO getById(long id);

    List<TbItemDTO> getByCid(long cid);
}
