package com.starbucks.admin.web.controller;

import com.starbucks.admin.service.TbItemService;
import com.starbucks.commons.validator.BeanValidator;
import com.starbucks.domain.TbItem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @ author xwj
 * @ date 2018/9/25 15:45
 */
@Controller
@RequestMapping(value = "item")
public class ItemController extends BaseContorller<TbItem, TbItemService> {


    @Override
    public String list() {
        return "modules/item/list";
    }

    @Override
    public String form() {
        return "modules/item/form";
    }

    @Override
    public String save(TbItem tbItem, RedirectAttributes redirectAttributes, Model model) {
        String message = BeanValidator.validator(tbItem);
        if (message == null) {
            service.save(tbItem);
            redirectAttributes.addFlashAttribute("message","保存成功");
            return "redirect:list";
        } else {
            model.addAttribute("message",message);
            return "/modules/item/form";
        }
    }

    @Override
    public String detail() {
        return "/modules/item/detail";
    }


}
