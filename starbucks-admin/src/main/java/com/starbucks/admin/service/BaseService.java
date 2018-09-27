package com.starbucks.admin.service;

import com.starbucks.domain.BaseEntity;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 16:15
 */
public interface BaseService<T extends BaseEntity> {

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
    List<T> page(T t, int start, int length);

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
     * 保存
     * @param t
     */
    void save(T t);



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
