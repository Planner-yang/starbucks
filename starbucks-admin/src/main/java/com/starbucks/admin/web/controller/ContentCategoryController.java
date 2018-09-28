package com.starbucks.admin.web.controller;


import com.starbucks.admin.service.TbContentCategoryService;
import com.starbucks.admin.service.TbContentService;
import com.starbucks.domain.TbContentCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

/**
 * 内容分类管理
 *
 * @ author xwj
 * @ date 2018/9/7 14:03
 */
@Controller
@RequestMapping(value = "content/category")
public class ContentCategoryController extends BaseTreeController<TbContentCategory, TbContentCategoryService> {

    @Autowired
    private TbContentService tbContentService;

    @Override
    public String list(Model model, TbContentCategory tbContentCategory) {
        List<TbContentCategory> targetList = new ArrayList<>();
        List<TbContentCategory> resourceList = service.selectAll(tbContentCategory);

        //高级搜索
        if (tbContentCategory.getName() != null) {
            model.addAttribute("tbContentCategories", resourceList);
        }

        //全部展示
        else {
            orderList(resourceList, targetList, 0L);
            model.addAttribute("tbContentCategories", targetList);
        }
        return "/modules/content/category/list";
    }

    @Override
    public String save(TbContentCategory tbContentCategory, RedirectAttributes redirectAttributes, Model model) {
        service.save(tbContentCategory);
        redirectAttributes.addFlashAttribute("message", "保存成功");
        return "redirect:list";
    }


    @Override
    public String form(TbContentCategory tbContentCategory) {
        return "/modules/content/category/form";
    }

    /**
     * 级联删除
     * @param
     * @param redirectAttributes
     * @return
     */
    @Override
    public String deleteById(TbContentCategory tbContentCategory, RedirectAttributes redirectAttributes) {
        service.deleteById(tbContentCategory);

        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:list";
    }

    /**
     * 对数据进行排序
     *
     * @param resourceList
     * @param targetList
     * @param parentId
     */
    private void orderList(List<TbContentCategory> resourceList, List<TbContentCategory> targetList, long parentId) {
        for (TbContentCategory tbContentCategory : resourceList) {
            if (tbContentCategory.getParentId() == parentId) {
                targetList.add(tbContentCategory);
                if (tbContentCategory.isParent()) {
                    orderList(resourceList, targetList, tbContentCategory.getId());
                }
            }
        }
    }


}
