package com.starbucks.admin.web.controller;

import com.starbucks.admin.service.TbContentService;
import com.starbucks.commons.validator.BeanValidator;
import com.starbucks.domain.TbContent;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @ author xwj
 * @ date 2018/9/11 20:05
 */
@Controller
@RequestMapping(value = "content")
public class ContentController extends BaseController<TbContent,TbContentService> {



    /**
     * 保存
     * @param tbContent
     * @param redirectAttributes
     * @param model
     * @return
     */
    @Override
    public String save(TbContent tbContent, RedirectAttributes redirectAttributes, Model model) {
        String message = BeanValidator.validator(tbContent);
        if (message == null) {
            service.save(tbContent);
            redirectAttributes.addFlashAttribute("message","保存成功");
            return "redirect:list";
        } else {
            model.addAttribute("message",message);
            return "/modules/content/form";
        }
    }

    @Override
    public String list() {
        return "/modules/content/list";
    }

    @Override
    public String form() {
        return "/modules/content/form";
    }

    @Override
    public String detail() {
        return "/modules/content/detail";
    }
}
