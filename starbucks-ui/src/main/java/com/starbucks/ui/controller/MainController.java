package com.starbucks.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @RequestMapping(value = {"","main"})
    public String login() {

        return "index";
    }
    @RequestMapping(value = "stores",method = RequestMethod.GET)
    private String stores(){
        return "stores";
    }

    @RequestMapping(value = "vipHelp",method = RequestMethod.GET)
    private String vipHelp(){
        return "vipHelp";
    }

    @RequestMapping(value = "vipHelpMore",method = RequestMethod.GET)
    private String vipHelpMore(){
        return "vipHelpMore";
    }
}
