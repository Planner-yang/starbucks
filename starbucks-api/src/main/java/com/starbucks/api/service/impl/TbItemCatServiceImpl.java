package com.starbucks.api.service.impl;

import com.starbucks.api.dao.TbItemCatDao;
import com.starbucks.api.dto.TbItemCatDTO;
import com.starbucks.api.service.TbItemCatService;
import com.starbucks.domain.TbItemCat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 14:01
 */
@Service
public class TbItemCatServiceImpl implements TbItemCatService {

    @Autowired
    private TbItemCatDao tbItemCatDao;

    public List<TbItemCat> selectByPid(long parentId) {
        return tbItemCatDao.selectByPid(parentId);
    }

    @Override
    public TbItemCat getById(long id) {
        return tbItemCatDao.getById(id);
    }
}
