package com.starbucks.admin.service.impl;

import com.starbucks.admin.dao.TbItemCatDao;
import com.starbucks.admin.service.TbItemCatService;
import com.starbucks.domain.TbItemCat;
import org.springframework.stereotype.Service;

/**
 * @ author xwj
 * @ date 2018/9/25 20:49
 */
@Service
public class TbItemCatServiceImpl extends BaseTreeServiceImpl<TbItemCat, TbItemCatDao> implements TbItemCatService {
}
