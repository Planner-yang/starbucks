package com.starbucks.admin.service.impl;


import com.starbucks.admin.dao.TbContentDao;
import com.starbucks.admin.service.TbContentService;
import com.starbucks.domain.TbContent;
import org.springframework.stereotype.Service;

/**
 * @ author xwj
 * @ date 2018/9/11 15:41
 */
@Service
public class TbContentServiceImpl extends BaseServiceImpl<TbContent, TbContentDao> implements TbContentService {

    @Override
    public void deleteByCategoryId(long id) {
        dao.deleteByCategoryId(id);
    }
}
