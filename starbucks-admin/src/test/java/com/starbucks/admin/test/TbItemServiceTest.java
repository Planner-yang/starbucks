package com.starbucks.admin.test;

import com.starbucks.admin.service.TbItemService;
import com.starbucks.domain.TbItem;
import com.starbucks.domain.TbItemCat;


import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @ author xwj
 * @ date 2018/9/25 16:31
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class TbItemServiceTest {

    @Autowired
    private TbItemService tbItemService;


    @Test
    public void selectAll() {
        tbItemService.selectAll();
    }

    @Test
    public void getById() {
        tbItemService.getById(1030175999L);
    }

    @Test
    public void page() {
        TbItem tbItem = new TbItem();
        tbItemService.page(tbItem,0, 3);
    }

    @Test
    public void getCount() {
        TbItem tbItem = new TbItem();
        tbItemService.getCount(tbItem);
    }

    @Test
    public void save() {
        /*TbItem tbItem = new TbItem();
        tbItem.setTitle("徐伟健");
        tbItem.setSellPoint("dasfsdfsda");
        tbItem.setPrice(100L);
        tbItem.setNum(100);
        tbItem.setBarcode("条形码");
        tbItem.setImage("图片");
        tbItem.setStatus(1);
        TbItemCat tbItemCat = new TbItemCat();
        tbItemCat.setId(560L);
        tbItem.setTbItemCat(tbItemCat);

        TbItemDesc tbItemDesc = new TbItemDesc();
        tbItemDesc.setItemId(tbItem.getId());
        tbItemDesc.setItemDesc("林家旭");

        tbItem.setTbItemDesc(tbItemDesc);*/
        TbItem tbItem = tbItemService.getById(1537869079835752001L);
        tbItem.setTitle("徐伟健");
        TbItemCat tbItemCat = new TbItemCat();
        tbItemCat.setId(560L);
        tbItem.setTbItemCat(tbItemCat);

        tbItemService.save(tbItem);
    }

    @Test
    public void deleteById() {
        tbItemService.deleteById(1537869079835752001L);
    }

    @Test
    public void batchDelete() {

        tbItemService.batchDelete(new String[]{"1537868794877547000L","1537868753033552000L","1537868732725721000L"});
    }

    @Test
    public void idUtils() {
        long count  = 0;
        int idLength = 3;
        long currentTimeMillis = System.currentTimeMillis();
        long random = (long) (100 + Math.random() * 899);
        count++;

        if (String.valueOf(count).length() > idLength) {
            count = 0;
        }

        String strId = String.format("%s%s%s", currentTimeMillis, random, StringUtils.leftPad(String.valueOf(count), idLength, "0"));
        System.out.println(strId);
    }
}
