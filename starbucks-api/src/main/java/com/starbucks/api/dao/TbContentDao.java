package com.starbucks.api.dao;

import com.starbucks.api.dto.TbContentDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/28 14:35
 */
@Repository
public interface TbContentDao {

    List<TbContentDTO> selectAll();

    List<TbContentDTO> getByCategoryId(long categoryId);
}
