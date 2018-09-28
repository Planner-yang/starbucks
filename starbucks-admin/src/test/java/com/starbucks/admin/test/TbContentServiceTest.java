package com.starbucks.admin.test;


import com.starbucks.admin.dao.TbContentDao;
import com.starbucks.domain.TbContent;
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
 * @ date 2018/8/30 21:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class TbContentServiceTest {

    @Autowired
    private TbContentDao tbContentDao;

    @Test
    public void selectAll() {
        List<TbContent> tbContents = tbContentDao.selectAll();
        for (TbContent tbContent : tbContents) {
            System.out.println(tbContent);
        }
    }


    @Test
    public void testInsert() {
        TbContent tbContent = new TbContent();
        tbContent.setId(5L);
        TbContentCategory tbContentCategory = new TbContentCategory();
        tbContentCategory.setId(80L);
        tbContent.setTbContentCategory(tbContentCategory);
        tbContent.setTitle("xxx");
        tbContent.setCreated(new Date());
        tbContent.setUpdated(new Date());
        tbContentDao.insert(tbContent);
    }

    @Test
    public void testDelete() {
        tbContentDao.deleteById(5L);
    }

    @Test
    public void testUpdate() {
        TbContent tbContent = new TbContent();
        tbContent.setId(2L);
        tbContent.setTitle("xwj");
        tbContentDao.update(tbContent);
    }

    @Test
    public void testBatchDelete() {
        String[] ids = new String[]{"33","34"};
        tbContentDao.batchDelete(ids);
    }


    @Test
    public void testGet() {
        tbContentDao.getById(35L);
    }

    @Test
    public void testGetCount() {
        tbContentDao.getCount(new TbContent());
    }

    @Test
    public void testPage() {
        TbContent tbContent = new TbContent();
        tbContent.setStart(0);
        tbContent.setLength(2);
        tbContentDao.page(tbContent);
    }

    @Test
    public void deleteByCategoryId() {
        tbContentDao.deleteByCategoryId(111L);
    }
}
