package com.starbucks.admin.service;


import com.starbucks.domain.TbContent;

/**
 * @ author xwj
 * @ date 2018/9/11 15:42
 */
public interface TbContentService extends BaseService<TbContent> {
    void deleteByCategoryId(long id);
}
