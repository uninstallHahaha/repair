package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.User;
import com.aclic.lottery.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.PathVariable;
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

    //modify password
    @ResponseBody
    @RequestMapping("/modPass")
    public Map<String, Object> modPass(String oldPass, String newPass, String reNewPass, HttpSession session) {//✔
        Map<String, Object> map = new HashMap<String, Object>();
        User curUser = (User) (session.getAttribute("USER"));
        if (!(oldPass).equals(curUser.getPass())) {
            map.put("res", 0);
            map.put("data", "原密码输入错误,请重新输入");
            return map;
        }
        curUser.setPass(newPass);
        if (userService.modUser(curUser) == 1) {
            map.put("res", 1);
            map.put("data", "");
            return map;
        } else {
            map.put("res", 0);
            map.put("data", "服务器异常,请稍后再试");
            return map;
        }
    }



    //modify name
    @ResponseBody
    @RequestMapping("/modName")
    public Map<String, Object> modName(String newName, HttpSession session) {//✔
        Map<String, Object> map = new HashMap<String, Object>();
        User curUser = (User) (session.getAttribute("USER"));
        User oneByName = userService.findOneByName(newName);
        if (oneByName != null) {
            map.put("res", 0);
            map.put("data", "该用户名已被占用,换一个试试=￣ω￣=");
            return map;
        }
        curUser.setName(newName);
        if (userService.modUser(curUser) == 1) {
            map.put("res", 1);
            map.put("data", "");
            return map;
        } else {
            map.put("res", 0);
            map.put("data", "服务器异常,请稍后再试");
            return map;
        }
    }

    //绑定邮箱
    @RequestMapping("/checkIn/{email}/{id}")
    public String checkIn(@PathVariable(name = "id") String id,
                          @PathVariable(name = "email") String email,
                          HttpSession session, Model model) {
        User user = new User();
        user.setEmail(email);
        user.setId(id);
        int res = userService.activeEmail(user);
        if (res == 1) {
            //更新session
            User newUser = userService.findOneById(id);
            session.setAttribute("USER", newUser);
            model.addAttribute("result", "激活成功!");
        } else {
            model.addAttribute("result", "激活失败,请重新设置邮箱");
        }
        return "active_email_res";
    }

}