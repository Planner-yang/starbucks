package com.starbucks.api.service;

import com.starbucks.api.dto.TbContentDTO;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/28 14:37
 */
public interface TbContentService {

    List<TbContentDTO> selectAll();

    List<TbContentDTO> getByCategoryId(long categoryId);
}
