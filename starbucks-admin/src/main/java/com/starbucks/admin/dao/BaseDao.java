package com.starbucks.admin.dao;

import com.starbucks.domain.BaseEntity;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 16:07
 */

public interface BaseDao<T extends BaseEntity> {
    /**
     * 查询全部
     * @return
     */
    List<T> selectAll();

    /**
     * 分页条件查询
     * @param t
     * @return
     */
    List<T> page(T t);

    /**
     * 通过id获取
     * @param id
     * @return
     */
    T getById(long id);

    /**
     * 统计个数
     * @param t
     * @return
     */
    int getCount(T t);

    /**
     * 插入
     * @param t
     */
    void insert(T t);

    /**
     * 更新
     * @param t
     */
    void update(T t);

    /**
     * 通过id删除
     * @param id
     */
    void deleteById(long id);

    /**
     * 批量删除
     * @param strId
     * @return
     */
    int batchDelete(String[] strId);


}
