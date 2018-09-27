package com.starbucks.admin.service.impl;

import com.starbucks.admin.dao.BaseTreeDao;
import com.starbucks.admin.service.BaseTreeService;
import com.starbucks.domain.BaseTreeEntity;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 20:26
 */
public class BaseTreeServiceImpl<T extends BaseTreeEntity, D extends BaseTreeDao<T>> implements BaseTreeService<T> {
    @Autowired
    protected D dao;

    /**
     * 查看所有
     * @return
     */
    @Override
    public List<T> selectAll(T t) {
        return dao.selectAll(t);
    }

    /**
     * 获取类相同的对象
     * @param parentId
     * @return
     */
    @Override
    public List<T> selectByPid(long parentId) {
        return dao.selectByPid(parentId);
    }

    /**
     * 通过ID删除
     * @param t
     */
    @Override
    public void deleteById(T t) {
        dao.deleteById(t.getId());
    }

    /**
     * 保存
     * @param t
     * @return
     */
    @Override
    public void save(T t) {

        t.setUpdated(new Date());

        if (t.getId() == 0) {
            t.setCreated(new Date());
            dao.insert(t);
        } else {
            dao.update(t);
        }
    }

    /**
     * 返回某个记录
     * @param id
     * @return
     */
    @Override
    public T getById(long id) {
        return dao.getById(id);
    }
}
