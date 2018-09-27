package com.starbucks.ui.controller;

import com.starbucks.ui.api.TbItemApi;
import com.starbucks.ui.api.TbItemCatApi;
import com.starbucks.ui.dto.TbItem;
import com.starbucks.ui.dto.TbItemCat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
        List<TbItemCat> itemCats = TbItemCatApi.list(1L);
        model.addAttribute("itemCats",itemCats);
        return "/menu/menu";
    }

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String list(Model model, long parentId) {
        List<TbItemCat> itemCats = TbItemCatApi.list(parentId);
        TbItemCat tbItemCat = TbItemCatApi.getParentName(parentId);
        List<TbItem> items = TbItemApi.list(parentId);
        model.addAttribute("itemCats", itemCats);
        model.addAttribute("items",items);
        model.addAttribute("tbItemCat", tbItemCat);
        return "/menu/list";
    }
}
