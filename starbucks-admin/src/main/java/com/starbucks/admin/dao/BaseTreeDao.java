package com.starbucks.admin.dao;

import com.starbucks.domain.BaseTreeEntity;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 20:21
 */
public interface BaseTreeDao<T extends BaseTreeEntity> {
    List<T> selectAll(T t);

    List<T> selectByPid(long parentId);

    T getById(long id);

    void insert(T t);

    void deleteById(long id);

    void update(T t);
}
