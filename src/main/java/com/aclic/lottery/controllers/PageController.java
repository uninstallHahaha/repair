package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Comment;
import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.User;
import com.aclic.lottery.services.CommentService;
import com.aclic.lottery.services.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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



    @RequestMapping("/getSearchPage/{rid}")//
    public String getSearchPage(@PathVariable String rid, Model model){
        Record one = new Record();
        if(rid != "alice"){
            one = recordService.findOne(rid);
            if(one  == null){
                one = new Record();
            }
            model.addAttribute("rid",rid);
        }else{
            model.addAttribute("rid","");
        }
        model.addAttribute("comment",one);
        return "record_search";
    }

    @RequestMapping("/loginpage")
    public String getloginpage(){
        return "page-login";
    }


    @RequestMapping("/signuppage")
    public String getsignuppage(){
        return "page-signup";
    }

    @RequestMapping("/profilepage")
    public String getprofilepage(){
        return "profile";
    }

    @RequestMapping("/getUploadPage")
    public String getUploadPage() {
        return "upload";
    }

    //show change password
    @RequestMapping("/getChangePassPage")
    public String getChangePassPage() {//✔
        return "CPass";
    }
    //show change password
    @RequestMapping("/getChangeNamePage")
    public String getChangeNamePage() {//✔
        return "CName";
    }

    @RequestMapping("getEmailPage")
    public String getEmailPage(HttpSession session, Model model) {
        User user = (User) session.getAttribute("USER");
        model.addAttribute("curEmail",
                user.getEmail().equals("null@null.com") ? "您还未绑定邮箱"
                        : "当前绑定的邮箱:" + user.getEmail());
        return "emailPage";
    }


    @RequestMapping("/adminindex")
    public String getadminindex() {//✔
        return "redirect:/table-record-deal.html";
    }
}
