package com.starbucks.api.service.impl;

import com.starbucks.api.dao.TbItemDao;
import com.starbucks.api.dto.TbItemDTO;
import com.starbucks.api.service.TbItemService;
import com.starbucks.domain.TbItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 22:26
 */
@Service
public class TbItemServiceImpl implements TbItemService {

    @Autowired
    private TbItemDao tbItemDao;

    @Override
    public List<TbItemDTO> selectAll() {
        return tbItemDao.selectAll();
    }

    @Override
    public TbItemDTO getById(long id) {
        return tbItemDao.getById(id);
    }

    @Override
    public List<TbItemDTO> getByCid(long cid) {
        return tbItemDao.getByCid(cid);
    }
}
