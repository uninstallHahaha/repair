package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Comment;
import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.User;
import com.aclic.lottery.Models.Worker;
import com.aclic.lottery.services.CommentService;
import com.aclic.lottery.services.RecordService;
import com.aclic.lottery.services.UserService;
import com.aclic.lottery.services.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class PageController {

    @Autowired
    RecordService recordService;
    @Autowired
    CommentService commentService;
    @Autowired
    WorkerService workerService;
    @Autowired
    UserService userService;

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

    //选择修理人员
    @RequestMapping("/getWorkerSelectPage/{rid}")
    public String getWorkerSelectPage(Model model,
                                      @PathVariable String rid) {//✔
        List<Worker> allWorkers = workerService.findAll();
        List<Worker> workers1 = new ArrayList<Worker>();
        List<Worker> workers2 = new ArrayList<Worker>();
        for(int i=0;i<allWorkers.size();i++){
            if(allWorkers.get(i).getDepartment() == 1){
                workers1.add(allWorkers.get(i));
                continue;
            }
            if(allWorkers.get(i).getDepartment() == 2){
                workers2.add(allWorkers.get(i));
                continue;
            }
        }
        model.addAttribute("all",allWorkers);
        model.addAttribute("w1",workers1);
        model.addAttribute("w2",workers2);
        model.addAttribute("rid",rid);
        return "workerSelectList";
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

    @RequestMapping("/userlistpage")
    public String userlistpage(Model model) {//✔
        model.addAttribute("users",userService.findAll());
        return "lists-user";
    }
    @RequestMapping("/workerlistpage")
    public String workerlistpage(Model model) {//✔
        model.addAttribute("workers",workerService.findAll());
        return "lists-worker";
    }


    //add worker page
    @RequestMapping("/getaddworkerpage")
    public String getaddworkerpage() {//✔
        return "addWorker";
    }


    @RequestMapping("/getworkermissonpage")
    public String getworkermissonpage() {//✔
        return "table-record-misson";
    }
    @RequestMapping("/getworkertodomissonpage")
    public String getworkertodomissonpage() {
        return "table-record-todo";
    }
}
