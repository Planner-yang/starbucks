package com.starbucks.admin.dao;

import com.starbucks.domain.TbUser;
import org.springframework.stereotype.Repository;

/**
 * @ author xwj
 * @ date 2018/8/30 21:24
 */
@Repository
public interface TbUserDao extends BaseDao<TbUser> {


    TbUser getUserByEmail(String email);


}
