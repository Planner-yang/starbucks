package com.starbucks.admin.web.controller;

import com.starbucks.admin.service.BaseTreeService;
import com.starbucks.domain.BaseTreeEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/13 17:50
 */
public abstract class BaseTreeController<T extends BaseTreeEntity, S extends BaseTreeService<T>> {
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
        } else {
            t = service.getById(Long.parseLong(id));
        }
        return t;
    }

    /**
     * 保存
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public abstract String save(T t, RedirectAttributes redirectAttributes, Model model);

    /**
     * 删
     */
    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public abstract String deleteById(T t, RedirectAttributes redirectAttributes);


    /**
     * 查
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public abstract String list(Model model, T t);

    @RequestMapping(value = "form", method = RequestMethod.GET)
    public abstract String form(T t);




    @ResponseBody
    @RequestMapping(value = "treeData", method = RequestMethod.GET)
    public List<T> treeData(Long id) {
        List<T> list = service.selectByPid(id == null ? 0L : id);
        return list;
    }
}
