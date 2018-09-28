package com.starbucks.admin.web.controller;


import com.starbucks.admin.service.TbUserService;
import com.starbucks.commons.validator.BeanValidator;
import com.starbucks.domain.TbUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;


/**
 * @ author xwj
 * @ date 2018/9/3 17:58
 */
@Controller
@RequestMapping(value = "user")
public class UserController extends BaseController<TbUser, TbUserService> {

    @Override
    public String form() {
        return "/modules/user/form";
    }


    /**
     * 查
     */
    @Override
    public String list() {
        return "/modules/user/list";
    }


    /**
     * 查看细节
     *
     * @return
     */
    @Override
    public String detail() {
        return "/modules/user/detail";
    }

    /**
     * 保存
     */
    @Override
    public String save(TbUser tbUser, RedirectAttributes redirectAttributes, Model model) {
        //判断输入信息是否符合规范
        String message = BeanValidator.validator(tbUser);
        //判断用户名,手机,邮箱是否重复
        String result = checkUnique(tbUser);
        //格式规范
        if (message == null) {

            //不重复
            if (result == null) {
                service.save(tbUser);
                redirectAttributes.addFlashAttribute("message", "保存成功");
                return "redirect:/user/list";
            }

            //用户名或手机或邮箱重复
            else {
                model.addAttribute("message", result);
                return form();
            }
        }

        //格式不规范
        else {
            model.addAttribute("message", message);
            return form();
        }
    }

    private String checkUnique(TbUser tbUser) {
        String result = null;
        List<TbUser> userList = service.selectAll();
        for (TbUser user : userList) {
            /**
             * 1.新增用户,不会有id,判断成立
             * 2.编辑用户,有id,就会排除自己
             */
            if (!user.equals(service.getById(tbUser.getId()))) {
                if (tbUser.getUsername().equals(user.getUsername())) {
                    return "用户名已存在";
                }

                if (tbUser.getPhone().equals(user.getPhone())) {
                    return "手机已存在";
                }

                if (tbUser.getEmail().equals(user.getEmail())) {
                    return "邮箱已存在";
                }
            }
        }
        return result;
    }
}
