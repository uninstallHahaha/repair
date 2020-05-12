package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Admin;
import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.User;
import com.aclic.lottery.Utils.QRCodeUtil;
import com.aclic.lottery.Utils.Utils;
import com.aclic.lottery.services.RecordService;
import com.aclic.lottery.services.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class RecordController {

    @Autowired
    RecordService recordService;
    @Autowired
    WorkerService workerService;

    //提交申请
    @RequestMapping("/addRecord")
    public String uploadAvatar(HttpSession session,
            Model model,
            HttpServletRequest request, MultipartFile pic,
            String place,
            String rtime,
            int type,
            String desc,
            String username,
            String userphone) throws Exception {

        //获取上传的位置(判断有无, 无责新建)
        String path = request.getSession()
                .getServletContext().getRealPath("/uploads/record");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        //获取上传文件的名称
        String filename = pic.getOriginalFilename();
        //使用uuid使得文件名唯一
        String uuid = UUID.randomUUID().toString().replace("-", "").substring(0, 6);
        filename = uuid + "_" + filename;
        //文件上传
        try {
            pic.transferTo(new File(path, filename));
            model.addAttribute("picstat", 1);
        } catch (Exception e) {
            model.addAttribute("picstat", 0);
        }

        //记录入库
        User user = (User)session.getAttribute("USER");
        int pay = 0;
        switch (type) {
            case 1:
                pay = 30;
                break;
            case 2:
                pay = 50;
                break;
            case 3:
                pay = 100;
                break;
            default:
                pay = 30;
                break;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        final Record record = new Record();
        record.setRtime(simpleDateFormat.parse(rtime));
        record.setCtime(new Date());
        record.setDetail(desc);
        record.setId(Utils.genUUID());
        record.setPayPrice(pay);
        record.setPic(filename);
        record.setPayState(0);
        record.setSubuserid(user.getId());
        record.setUsername(username);
        record.setUserphone(userphone);
        record.setWhereRepair(place);
        record.setState(1);
        record.setType(1);
        int addRes = recordService.addRecord(record);
        if (addRes == 1) {
            model.addAttribute("r_state", 1);
        } else {
            model.addAttribute("r_state", 0);
        }

        //支付倒计时
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                Record one = recordService.findOne(record.getId());
                if (one.getPayState() != 1) {
                    int res = recordService.modPayStateTo28(record.getId());
                }
            }
        }, 1000 * 60 * 15);

        //生成二维码
        String text = Utils.getIpAddress() + ":8080/gettopaypage/" + record.getId();
        // 嵌入二维码的图片路径
        String imgPath = "/assets/images/small-logo.png";
        // 生成的二维码的路径及名称
        String mapath = request.getSession()
                .getServletContext().getRealPath("/uploads/ma");
        File mafile = new File(path);
        if (!mafile.exists()) {
            mafile.mkdirs();
        }
        String maname = filename.split("\\.")[0] + "_ma.jpg";
        String destPath = mapath + "/" + maname;
        QRCodeUtil.encode(text, imgPath, destPath, true);

        //返回二维码名称
        model.addAttribute("mapath", maname);
        //订单id
        model.addAttribute("rid", record.getId());


        return "pay_page";
    }


    //修改 - 支付状态
    @RequestMapping("/checkpay")
    public String checkpay(String rid, Model model) {
        if (recordService.findOne(rid).getPayState() != 28) {
            //未逾期
            int modres = recordService.modPayState(rid);
            if (modres == 1) {
                model.addAttribute("payres", "支付成功");
            } else {
                model.addAttribute("payres", "支付失败");
            }
        } else {
            model.addAttribute("payres", "未在规定时间内支付, 订单已逾期");
        }
        model.addAttribute("payid", rid);
        return "pay_result";
    }

    //查询 - 支付状态
    @ResponseBody
    @RequestMapping("/getPayState")
    public int getPayState(String id) {
        return recordService.findOne(id).getPayState();
    }


    //查询 - 所有 -de
    @ResponseBody
    @RequestMapping("/obtainRecords")
    public List<Record> obtainRecords(String id) {
        return recordService.findAllByUserid("");
    }

    //查询 - 未审核 - 提交了,付钱了 - 管理员
    @ResponseBody
    @RequestMapping("/obtainRecordsNoDeal")
    public List<Record> obtainRecordsNoDeal() {
        return recordService.findAllNoDeal();
    }


    //查询 - 所有 - 正在进行 - 用户
    @ResponseBody
    @RequestMapping("/obtainRecordsDoing")
    public List<Record> obtainRecordsDoing(HttpSession session) {
        User user = (User) session.getAttribute("USER");
        return recordService.findDoingByUserid(user.getId());
    }

    //查询 - 所有 - 已完成 - 管理员
    @ResponseBody
    @RequestMapping("/obtainRecordsDone")
    public List<Record> obtainRecordsDone(String id) {
        return recordService.findDone();
    }

    //查询 - 所有 - 已完成 - 用户
    @ResponseBody
    @RequestMapping("/obtainRecordsDoneByUserId")
    public List<Record> obtainRecordsDoneByUserId(HttpSession session) {
        User user = (User) session.getAttribute("USER");
        return recordService.findDoneByUserid(user.getId());
    }


    //查询 - 已审核,未确认 - 维修人员待确认
    @ResponseBody
    @RequestMapping("/obtainRecordsDealed/{wid}")
    public List<Record> obtainRecordsDealed(@PathVariable String wid) {
        return recordService.findAllDealed(wid);
    }
    //查询 - 已审核,未确认 - 维修人员待执行
    @ResponseBody
    @RequestMapping("/obtainRecordsTodo/{wid}")
    public List<Record> obtainRecordsTodo(@PathVariable String wid) {
        return recordService.findAllTodo(wid);
    }
    //查询 - 已审核,未确认 - 维修人员维修记录
    @ResponseBody
    @RequestMapping("/obtainRecordsFinish/{wid}")
    public List<Record> obtainRecordsFinish(@PathVariable String wid) {
        return recordService.findAllFinish(wid);
    }




    //删除订单
    @ResponseBody
    @RequestMapping("/delRecord")
    public int delRecord(String id) {
        return recordService.delRecord(id);
    }

    @ResponseBody
    @RequestMapping("/delRecordList")
    public int delRecordList(@RequestParam(value = "ids[]") List<String> ids) {
        return recordService.delRecordList(ids);
    }

    //指派
    @ResponseBody
    @RequestMapping("/assignTo")
    public int assignTo(String rid, String wkid, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("USER");
        Record one = recordService.findOne(rid);
        one.setDealuserid(admin.getId());
        one.setDtime(new Date());
        one.setState(2);
        one.setAssignuserid(wkid);
        int modres = recordService.update(one);
        int wkres = 0;
        if (modres == 1) {
            //修改worker表
            wkres = workerService.assignTodo(wkid);
        }
        return wkres;
    }


    //确认指派
    @ResponseBody
    @RequestMapping("/checkOkRecord")
    public int checkOkRecord(String id, HttpSession session) {
        int wkres = recordService.checkOkRecord(id);
        return wkres;
    }
    //拒绝指派
    @ResponseBody
    @RequestMapping("/refuseRecord")
    public int refuseRecord(String id, HttpSession session) {
        int wkres = recordService.refuseRecord(id);
        return wkres;
    }


    //完成指派
    @ResponseBody
    @RequestMapping("/finishRecord")
    public int finishRecord(String id, HttpSession session) {
        int wkres = recordService.finishRecord(id);
        return wkres;
    }


}
