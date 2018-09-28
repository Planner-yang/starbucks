package com.starbucks.admin.service.impl;

import com.starbucks.admin.dao.TbContentCategoryDao;
import com.starbucks.admin.service.TbContentCategoryService;
import com.starbucks.domain.TbContentCategory;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @ author xwj
 * @ date 2018/9/7 14:01
 */
@Service
public class TbContentCategoryServiceImpl extends BaseTreeServiceImpl<TbContentCategory, TbContentCategoryDao> implements TbContentCategoryService {


    /**
     * 保存用户
     * @param tbContentCategory
     */
    @Override
    public void save(TbContentCategory tbContentCategory) {
        if (tbContentCategory.getParentId() != 0) {
            TbContentCategory byId = dao.getById(tbContentCategory.getParentId());
            //设置成父类目
            byId.setParent(true);
            dao.update(byId);
        }
        super.save(tbContentCategory);
    }

    /**
     * 级联删除
     * @param tbContentCategory
     */
    @Override
    public void deleteById(TbContentCategory tbContentCategory) {
        super.deleteById(tbContentCategory);
        if (tbContentCategory.isParent) {
            CascadeDelete(tbContentCategory);
        }
    }


    private void CascadeDelete(TbContentCategory tbContentCategory) {
        List<TbContentCategory> subList = dao.selectByPid(tbContentCategory.getId());
        for (TbContentCategory contentCategory : subList) {
            dao.deleteById(contentCategory.getId());
            if (contentCategory.isParent) {
                CascadeDelete(contentCategory);
            }
        }
    }
}
