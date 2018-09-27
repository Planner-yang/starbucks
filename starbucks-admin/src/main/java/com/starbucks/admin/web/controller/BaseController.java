package com.starbucks.admin.web.controller;

import com.starbucks.admin.service.BaseService;
import com.starbucks.admin.web.result.DataTablesResult;
import com.starbucks.domain.BaseEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/25 19:13
 */

public abstract class BaseController<T extends BaseEntity, S extends BaseService<T>> {

    @Autowired
    protected S service;

    @ModelAttribute
    public T get(@RequestParam(required = false) String id) {
        T t = null;
        if (StringUtils.isBlank(id) || "0".equals(id)) {
            try {
                ParameterizedType ptype = (ParameterizedType) this.getClass().getGenericSuperclass();
                Class clazz = (Class<T>) ptype.getActualTypeArguments()[0];
                t = (T) clazz.newInstance();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        else {
            t = service.getById(Long.parseLong(id));
        }
        return t;
    }

    /**
     * 展示页面
     * @return
     */
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public abstract String list();

    /**
     * 分页
     * @param t
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "page", method = RequestMethod.GET)
    public DataTablesResult<T> page(T t, HttpServletRequest request) {
        DataTablesResult<T> result = new DataTablesResult<T>();

        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        int draw = strDraw == null ? 0 : Integer.parseInt(strDraw);
        int start = strStart == null ? 0 : Integer.parseInt(strStart);
        int length = strLength == null ? 10 : Integer.parseInt(strLength);


        List<T> list = service.page(t, start, length);

        int count = service.getCount(t);
        result.setDraw(draw);
        result.setRecordsTotal(count);
        result.setRecordsFiltered(count);
        result.setData(list);


        return result;
    }

    @RequestMapping(value = "form", method = RequestMethod.GET)
    public abstract String form();

    /**
     * 保存
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public abstract String save(T t, RedirectAttributes redirectAttributes, Model model);

    /**
     * 删
     */
    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String deleteUser(T t, RedirectAttributes redirectAttributes) {
        service.deleteById(t.getId());
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:list";
    }


    /**
     * 批量删除
     */
    @RequestMapping(value = "batchDelete", method = RequestMethod.GET)
    public String batchDelete(String ids, RedirectAttributes redirectAttributes) {
        if (StringUtils.isNoneBlank(ids)) {
            String[] strId = ids.split(",");
            int result = service.batchDelete(strId);
            if (result > 0) {
                redirectAttributes.addFlashAttribute("message", String.format("删除 %s 条记录成功", result));
            } else {
                redirectAttributes.addFlashAttribute("message", "删除失败");
            }
        }

        return "redirect:list";
    }

    /**
     * 查看细节
     *
     * @return
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public abstract String detail();

}
