package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Utils.QRCodeUtil;
import com.aclic.lottery.Utils.Utils;
import com.aclic.lottery.services.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class RecordController {

    @Autowired
    RecordService recordService;

    @RequestMapping("/addRecord")
    public String uploadAvatar(
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
        int pay = 0;
        if (type == 1) {
            pay = 30;
        }
        if (type == 2) {
            pay = 50;
        }
        if (type == 3) {
            pay = 100;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Record record = new Record();
        record.setRtime(simpleDateFormat.parse(rtime));
        record.setCtime(new Date());
        record.setDetail(desc);
        record.setId(Utils.genUUID());
        record.setPayPrice(pay);
        record.setPic(filename);
        record.setPayState(0);
        record.setSubuserid(Utils.genUUID());
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

        //生成二维码
        String text = Utils.getIpAddress() +":8080/gettopaypage/"+record.getId();
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
        String destPath = mapath +"/"+ maname;
        QRCodeUtil.encode(text, imgPath, destPath, true);

        //返回二维码名称
        model.addAttribute("mapath",maname);

        return "pay_page";
    }


    //修改 - 支付状态
    @RequestMapping("/checkpay")
    public String checkpay(String rid , Model model){
        int modres = recordService.modPayState(rid);
        if(modres ==1){
            model.addAttribute("payres",1);
        }else{
            model.addAttribute("payres",0);
        }
        return "pay_result";
    }
}
