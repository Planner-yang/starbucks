package com.starbucks.admin.service;

import com.starbucks.domain.BaseTreeEntity;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 20:24
 */
public interface BaseTreeService<T extends BaseTreeEntity> {
    List<T> selectAll(T t);

    List<T> selectByPid(long parentId);

    void deleteById(T t);


    void save(T t);


    T getById(long id);
}
