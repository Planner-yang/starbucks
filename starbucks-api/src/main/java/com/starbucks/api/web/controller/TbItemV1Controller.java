package com.starbucks.api.web.controller;

import com.starbucks.api.dto.TbItemDTO;
import com.starbucks.api.service.TbItemService;
import com.starbucks.commons.dto.BaseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 22:28
 */
@Controller
@RequestMapping(value = "v1/Item")
public class TbItemV1Controller {

    @Autowired
    private TbItemService tbItemService;

    @ResponseBody
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public BaseResult list(long cid) {

        List<TbItemDTO> list = tbItemService.getByCid(cid);

        return BaseResult.success(list);
    }

}
