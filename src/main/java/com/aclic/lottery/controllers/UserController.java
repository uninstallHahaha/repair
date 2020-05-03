package com.aclic.lottery.controllers;

import com.aclic.lottery.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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
}