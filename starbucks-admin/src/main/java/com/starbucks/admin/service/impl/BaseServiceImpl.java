package com.starbucks.admin.service.impl;

import com.starbucks.admin.dao.BaseDao;
import com.starbucks.admin.service.BaseService;
import com.starbucks.commons.utils.IDUtils;
import com.starbucks.domain.BaseEntity;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 16:19
 */
public class BaseServiceImpl<T extends BaseEntity, D extends BaseDao<T>> implements BaseService<T> {

    @Autowired D dao;

    /**
     * 查看所有
     * @return
     */
    @Override
    public List<T> selectAll() {
        return dao.selectAll();
    }

    /**
     * 分页查询
     * @param t
     * @param start
     * @param length
     * @return
     */
    @Override
    public List<T> page(T t, int start, int length) {
        t.setStart(start);
        t.setLength(length);
        return dao.page(t);
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

    /**
     * 统计数量
     * @param t
     * @return
     */
    @Override
    public int getCount(T t) {
        return dao.getCount(t);
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
            t.setId(IDUtils.generateId());
            t.setCreated(new Date());
            dao.insert(t);
        } else {
            dao.update(t);
        }
    }

    /**
     * 通过ID删除
     * @param id
     */
    @Override
    public void deleteById(long id) {
        dao.deleteById(id);
    }

    /**
     * 批量删除
     * @param strId
     * @return
     */
    @Override
    public int batchDelete(String[] strId) {
        return dao.batchDelete(strId);
    }
}
