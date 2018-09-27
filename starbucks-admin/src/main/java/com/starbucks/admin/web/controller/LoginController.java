package com.starbucks.admin.web.controller;


import com.starbucks.admin.service.TbUserService;
import com.starbucks.commons.utils.CookieUtils;
import com.starbucks.domain.TbUser;
import static com.starbucks.commons.SystemConstant.CONSTANT_ADMIN;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@Controller
public class LoginController {

    @Autowired
    private TbUserService tbUserService;

    @RequestMapping(value = {"", "login"}, method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        //自动登录判断
        String autoLogin = CookieUtils.getCookieValue(request, "autoLogin");
        if (!StringUtils.isBlank(autoLogin)) {
            return "main";
        }

        //登录状态判断
        TbUser admin = (TbUser) request.getSession().getAttribute(CONSTANT_ADMIN);
        if (admin != null) {
            return "main";
        }

        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(TbUser tbUser, Model model, HttpServletRequest request, HttpServletResponse response) {
        TbUser admin = tbUserService.login(tbUser.getEmail(), tbUser.getPassword());
        //登录失败
        if (admin == null) {
            model.addAttribute("message", "用户名或密码错误");
            return "login";
        }

        //登录成功
        else {
            setAutoLoginAndRememberMeCookie(tbUser, request, response, admin);
            request.getSession().setAttribute(CONSTANT_ADMIN, admin);
            return "main";
        }

    }

    private void setAutoLoginAndRememberMeCookie(TbUser tbUser, HttpServletRequest request, HttpServletResponse response, TbUser admin) {
        //选择自动登录
        if ("on".equals(tbUser.getAutoLogin())) {
            CookieUtils.setCookie(request, response, "autoLogin", admin.getEmail(), 60 * 60 * 24 * 7);
        }
        //没有选择自动登录
        else {
            String autoLogin = CookieUtils.getCookieValue(request, "autoLogin");
            if (!StringUtils.isBlank(autoLogin)) {
                CookieUtils.deleteCookie(request, response, "autoLogin");
            }
        }
        //选择记住我
        if ("on".equals(tbUser.getRememberMe())) {
            CookieUtils.setCookie(request, response, "rememberMe", tbUser.getEmail() + ":" + tbUser.getPassword(), 60 * 60 * 24 * 7);
        }
        //没有选择记住我
        else {
            String rememberMe = CookieUtils.getCookieValue(request, "rememberMe");
            if (!StringUtils.isBlank(rememberMe)) {
                CookieUtils.deleteCookie(request, response, "rememberMe");
            }
        }
    }


}
