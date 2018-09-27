package com.starbucks.admin.web.controller;


import com.starbucks.commons.utils.CookieUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @ author xwj
 * @ date 2018/9/1 9:55
 */
@Controller
public class LogoutController {

    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        String autoLogin = CookieUtils.getCookieValue(request, "autoLogin");
        if (!StringUtils.isBlank(autoLogin)) {
            CookieUtils.deleteCookie(request, response, "autoLogin");
        }
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:login";
    }
}
