package com.starbucks.admin.web.interceptor;

import com.starbucks.domain.TbUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.starbucks.commons.SystemConstant.CONSTANT_ADMIN;

/**
 * @ author xwj
 * @ date 2018/8/29 10:57
 */
public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
            TbUser admin  = (TbUser) request.getSession().getAttribute(CONSTANT_ADMIN);

        //判断用户是否登录
        if (admin == null) {
            //用户未登录, 重定向到登录页
            response.sendRedirect("/login");
            return false;
        }

        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
