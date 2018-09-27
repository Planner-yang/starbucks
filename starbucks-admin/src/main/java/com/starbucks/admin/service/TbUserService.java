package com.starbucks.admin.service;


import com.starbucks.domain.TbUser;

/**
 * @ author xwj
 * @ date 2018/8/30 21:26
 */
public interface TbUserService extends BaseService<TbUser> {

    TbUser login(String email, String password);

}
