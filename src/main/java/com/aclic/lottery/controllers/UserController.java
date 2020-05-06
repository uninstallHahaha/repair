package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.User;
import com.aclic.lottery.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(path="/hello")
    public String sayHello(Model model){

        List users = userService.findAll();
        model.addAttribute("users",users);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/modUser")
    public int modUser(User u) {//
        return userService.modUser(u);
    }

    @ResponseBody
    @RequestMapping("/modAv")
    public Map<String, Object> modAv(String av, HttpSession session) {//✔
        Map<String, Object> map = new HashMap<>();
        User user = (User) session.getAttribute("USER");
        user.setPic((av));
        int res = modUser(user);
        if (res == 1) {
            map.put("stat", 1);
            map.put("data", "");
        } else {
            map.put("stat", 0);
            map.put("data", "上传失败,请稍后再试");
        }
        return map;
    }
}