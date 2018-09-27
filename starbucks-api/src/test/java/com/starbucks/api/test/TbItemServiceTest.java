package com.starbucks.api.test;

import com.starbucks.api.service.TbItemCatService;
import com.starbucks.api.service.TbItemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @ author xwj
 * @ date 2018/9/26 14:51
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class TbItemServiceTest {

    @Autowired
    private TbItemService tbItemService;
    @Test
    public void selectByPid() {
        tbItemService.getByCid(10L);
    }
}
