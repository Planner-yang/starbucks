package com.starbucks.admin.service.impl;


import com.starbucks.admin.dao.TbUserDao;
import com.starbucks.admin.service.TbUserService;
import com.starbucks.domain.TbUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;

/**
 * @ author xwj
 * @ date 2018/8/30 21:27
 */
@Service
public class TbUserServiceImpl extends BaseServiceImpl<TbUser, TbUserDao> implements TbUserService {

    public static final Logger logger = LoggerFactory.getLogger(TbUserServiceImpl.class);

    @Override
    public TbUser login(String email, String password) {
        TbUser tbUser = dao.getUserByEmail(email);
        password = DigestUtils.md5DigestAsHex(password.getBytes());

        //存在该用户
        if (tbUser != null) {

            //密码正确
            if (tbUser.getPassword().equals(password)) {
                return tbUser;
            } else {
                logger.info("密码错误");
            }
        } else {
            logger.info("用户不存在");
        }


        return null;
    }

    /**
     * 保存
     * @param tbUser
     * @return
     */
    @Override
    public void save(TbUser tbUser) {

        tbUser.setUpdated(new Date());

        if (tbUser.getId() == 0) {
            tbUser.setCreated(new Date());
            tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
            dao.insert(tbUser);
        } else {
            tbUser.setPassword(DigestUtils.md5DigestAsHex(tbUser.getPassword().getBytes()));
            dao.update(tbUser);
        }
    }

}
