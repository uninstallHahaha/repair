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
        if(rid != null){
            //支付款项
            model.addAttribute("price",recordService.findOne(rid).getPayPrice());
        }else{
            model.addAttribute("price",30);
        }
        return "check_pay";
    }
}
