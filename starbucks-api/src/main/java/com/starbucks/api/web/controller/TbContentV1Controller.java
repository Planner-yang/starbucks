package com.starbucks.api.web.controller;

import com.starbucks.api.dto.TbContentDTO;
import com.starbucks.api.service.TbContentService;
import com.starbucks.commons.dto.BaseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/28 14:40
 */
@Controller
@RequestMapping(value = "v1/content")
public class TbContentV1Controller {

    @Autowired
    private TbContentService tbContentService;

    /**
     * 菜单首页广告图片展示
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "ppt", method = RequestMethod.GET)
    public BaseResult ppt() {

        List<TbContentDTO> ppt = tbContentService.getByCategoryId(80L);

        return BaseResult.success(ppt);
    }
}
