package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Comment;
import com.aclic.lottery.services.CommentService;
import com.aclic.lottery.services.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PageController {

    @Autowired
    RecordService recordService;
    @Autowired
    CommentService commentService;

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


    @RequestMapping("/getRecordDetailPage/{rid}")//
    public String getRecordDetailPage(@PathVariable String rid, Model model){
        model.addAttribute("record",recordService.findOne(rid));
        return "modal/record_detail";
    }

    @RequestMapping("/getCommentPage/{rid}")//
    public String getCommentPage(@PathVariable String rid, Model model){
        Comment one = commentService.findOne(rid);
        if(one  == null){
            one = new Comment();
            one.setStar(0);
            one.setId(null);
            one.setComment("");
        }
        model.addAttribute("comment",one);
        model.addAttribute("rid",rid);
        return "modal/record_comment";
    }


}
