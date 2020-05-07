package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.User;
import com.aclic.lottery.Models.Worker;
import com.aclic.lottery.Utils.Utils;
import com.aclic.lottery.services.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class WorkerController {


    @Autowired
    WorkerService workerService;

    @ResponseBody
    @RequestMapping("/delWorker")
    public int delWorker(String id, HttpSession session) {//✔
        return workerService.delWorker(id);
    }



    @ResponseBody
    @RequestMapping("/addWorker")
    public Map<String, Object> addWorker(HttpSession session,
                                      String name, String pass,
                                      int dep) {
        HashMap<String, Object> map = new HashMap<>();
        Worker oneByName = workerService.findOneByName(name);
        if (oneByName != null) {
            map.put("stat", 0);
            map.put("data", "该账号已存在");
            return map;
        }
        Worker worker = new Worker();
        worker.setId(Utils.genUUID());
        worker.setName(name);
        worker.setPass(pass);
        worker.setDepartment(dep);
        worker.setFinish(0);
        worker.setTodo(0);
        worker.setPic("about-1.jpg");
        int addRes = workerService.addUser(worker);
        if (addRes == 1) {
            map.put("stat", 1);
            map.put("data", "");
            return map;
        } else {
            map.put("stat", 0);
            map.put("data", "注册失败,服务器异常");
            return map;
        }
    }
}
