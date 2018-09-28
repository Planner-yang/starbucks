package com.starbucks.api.web.controller;

import com.starbucks.api.dto.TbItemCatDTO;
import com.starbucks.api.service.TbItemCatService;
import com.starbucks.commons.dto.BaseResult;
import com.starbucks.domain.TbItemCat;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @ author xwj
 * @ date 2018/9/26 14:05
 */
@Controller
@RequestMapping(value = "v1/itemCat")
public class TbItemCatV1Controller {

    @Autowired
    private TbItemCatService tbItemCatService;

    /**
     * 通过parentId获得所有子类对象
     * @param parentId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public BaseResult list(long parentId) {

        List<TbItemCatDTO> listDto = new ArrayList<>();
        List<TbItemCat> list = tbItemCatService.selectByPid(parentId);
        for (TbItemCat tbItemCat : list) {
            TbItemCatDTO tbItemCatDTO = new TbItemCatDTO();
            BeanUtils.copyProperties(tbItemCat, tbItemCatDTO);
            listDto.add(tbItemCatDTO);
        }

        return BaseResult.success(listDto);
    }

    /**
     * 获得分类名称
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getParentName",method = RequestMethod.GET)
    public BaseResult getParentName(long id) {
        TbItemCatDTO tbItemCatDTO = new TbItemCatDTO();

        TbItemCat tbItemCat = tbItemCatService.getById(id);

        BeanUtils.copyProperties(tbItemCat, tbItemCatDTO);

        return BaseResult.success(tbItemCatDTO);
    }

}
