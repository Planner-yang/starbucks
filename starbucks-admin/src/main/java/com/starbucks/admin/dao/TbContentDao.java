package com.starbucks.admin.dao;


import com.starbucks.domain.TbContent;
import org.springframework.stereotype.Repository;

/**
 * @ author xwj
 * @ date 2018/9/11 15:04
 */
@Repository
public interface TbContentDao extends BaseDao<TbContent> {

    void deleteByCategoryId(long id);

}
