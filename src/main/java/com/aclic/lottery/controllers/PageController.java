package com.aclic.lottery.controllers;

import com.aclic.lottery.services.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @Autowired
    RecordService recordService;

    @RequestMapping("/gettopaypage/{rid}")//
    public String gettopaypage(@PathVariable String rid, Model model){
        model.addAttribute("rid",rid);
        //支付款项
        model.addAttribute("price",recordService.findOne(rid).getPayPrice());
        return "check_pay";
    }
}
