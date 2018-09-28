package com.starbucks.api.service.impl;

import com.starbucks.api.dao.TbContentDao;
import com.starbucks.api.dto.TbContentDTO;
import com.starbucks.api.service.TbContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/28 14:38
 */
@Service
public class TbContentServiceImpl implements TbContentService {

    @Autowired
    private TbContentDao tbContentDao;


    @Override
    public List<TbContentDTO> selectAll() {
        return tbContentDao.selectAll();
    }


    @Override
    public List<TbContentDTO> getByCategoryId(long categoryId) {
        return tbContentDao.getByCategoryId(categoryId);
    }


}
