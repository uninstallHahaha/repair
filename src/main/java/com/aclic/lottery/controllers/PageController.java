package com.aclic.lottery.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping("/gettopaypage/{rid}")//
    public String gettopaypage(@PathVariable String rid, Model model){
        model.addAttribute("rid",rid);
        return "check_pay";
    }
}
