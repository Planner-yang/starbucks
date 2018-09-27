package com.starbucks.admin.web.controller;

import com.starbucks.admin.service.TbItemCatService;
import com.starbucks.domain.TbItemCat;
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
@RequestMapping(value = "item/cat")
public class ItemCatController extends BaseTreeController<TbItemCat, TbItemCatService> {


    @Override
    public String save(TbItemCat tbItemCat, RedirectAttributes redirectAttributes, Model model) {
        if (tbItemCat.getParentId() != 0) {
            TbItemCat byId = service.getById(tbItemCat.getParentId());
            byId.setParent(true);
            service.save(byId);
        }
        service.save(tbItemCat);
        redirectAttributes.addFlashAttribute("message", "保存成功");
        return "redirect:list";
    }

    /**
     * 级联删除
     * @param
     * @param redirectAttributes
     * @return
     */
    @Override
    public String deleteById(TbItemCat tbItemCat, RedirectAttributes redirectAttributes) {
        service.deleteById(tbItemCat);

        if (tbItemCat.isParent) {
            CascadeDelete(tbItemCat);
        }
        redirectAttributes.addFlashAttribute("message", "删除成功");
        return "redirect:list";
    }

    private void CascadeDelete(TbItemCat tbItemCat) {
        List<TbItemCat> subList = service.selectByPid(tbItemCat.getId());
        for (TbItemCat contentCategory : subList) {
            service.deleteById(contentCategory);
            if (contentCategory.isParent) {
                CascadeDelete(contentCategory);
            }
        }
    }

    @Override
    public String list(Model model, TbItemCat tbItemCat) {
        List<TbItemCat> targetList = new ArrayList<TbItemCat>();
        List<TbItemCat> resourceList = service.selectAll(tbItemCat);
        if (tbItemCat.getName() != null) {
            model.addAttribute("tbItemCats",resourceList);
        } else {
            orderList(resourceList, targetList, 0L);
            model.addAttribute("tbItemCats",targetList);
        }
        return "/modules/item/cat/list";
    }

    private void orderList(List<TbItemCat> resourceList, List<TbItemCat> targetList, long parentId) {
        for (TbItemCat tbItemCat : resourceList) {
            if (tbItemCat.getParentId() == parentId) {
                targetList.add(tbItemCat);
                if (tbItemCat.isParent()) {
                    orderList(resourceList, targetList, tbItemCat.getId());
                }
            }
        }
    }

    @Override
    public String form(TbItemCat tbItemCat) {
        return "/modules/item/cat/form";
    }
}
