package com.starbucks.ui.controller;

import com.starbucks.ui.api.TbContentApi;
import com.starbucks.ui.api.TbItemApi;
import com.starbucks.ui.api.TbItemCatApi;
import com.starbucks.ui.dto.TbContent;
import com.starbucks.ui.dto.TbItem;
import com.starbucks.ui.dto.TbItemCat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 9:22
 */
@Controller
@RequestMapping(value = "menu")
public class MenuController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String menu(Model model) {
        //展示分类
        List<TbItemCat> itemCats = TbItemCatApi.list(1L);
        model.addAttribute("itemCats",itemCats);
        //展示广告图片
        List<TbContent> ppt = TbContentApi.ppt();
        model.addAttribute("tbContentsPPT", ppt);
        return "/menu/menu";
    }

    /**
     *
     * @param model
     * @param parentId
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(Model model, long parentId) {
        //分类列表
        List<TbItemCat> itemCats = TbItemCatApi.list(parentId);
        model.addAttribute("itemCats", itemCats);
        //类名称
        TbItemCat tbItemCat = TbItemCatApi.getParentName(parentId);
        model.addAttribute("tbItemCat", tbItemCat);

        //展示所有商品
        List<TbItem> itemList = new ArrayList<>();
        for (TbItemCat itemCat : itemCats) {
            List<TbItem> list = TbItemApi.list(itemCat.id);
            for (TbItem tbItem : list) {
                itemList.add(tbItem);
            }
        }

        model.addAttribute("items",itemList);
        return "/menu/list";
    }


    @RequestMapping(value = "tbItem/list", method = RequestMethod.GET)
    public String tbItemList(Model model, long cid) {
        //类名称
        TbItemCat tbItemCat = TbItemCatApi.getParentName(cid);
        model.addAttribute("tbItemCat", tbItemCat);
        //商品列表
        List<TbItem> items = TbItemApi.list(cid);
        model.addAttribute("items",items);
        return "/menu/list";
    }
}
