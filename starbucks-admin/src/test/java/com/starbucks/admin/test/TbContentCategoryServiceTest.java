package com.starbucks.admin.test;

import com.starbucks.admin.dao.TbContentCategoryDao;
import com.starbucks.domain.TbContentCategory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/13 20:18
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class TbContentCategoryServiceTest {

    @Autowired
    private TbContentCategoryDao tbContentCategoryDao;

    @Test
    public void testSelectAll() {
        TbContentCategory tbContentCategory = new TbContentCategory();
        tbContentCategory.setName("漫");
        List<TbContentCategory> list = tbContentCategoryDao.selectAll(tbContentCategory);

        System.out.println(list);
    }

    @Test
    public void testSelectByPid() {
        List<TbContentCategory> list = tbContentCategoryDao.selectByPid(30L);
        System.out.println(list.size());
    }

    @Test
    public void testInsert() {
        TbContentCategory tbContentCategory = new TbContentCategory();
        tbContentCategory.setParentId(30L);
        tbContentCategory.setName("徐伟健");
        tbContentCategory.setStatus(1);
        tbContentCategory.setSortOrder(1);
        tbContentCategory.setParent(true);
        tbContentCategory.setCreated(new Date());
        tbContentCategory.setUpdated(new Date());
        tbContentCategoryDao.insert(tbContentCategory);
    }

    @Test
    public void testUpdate() {
        TbContentCategory tbContentCategory = new TbContentCategory();
        tbContentCategory.setId(100L);
        tbContentCategory.setName("林家旭");
        tbContentCategoryDao.update(tbContentCategory);
    }

    @Test
    public void testDelete() {
        tbContentCategoryDao.deleteById(100L);
    }

    @Test
    public void testGetById() {
        TbContentCategory byId = tbContentCategoryDao.getById(97L);
        System.out.println(byId);
    }
}
