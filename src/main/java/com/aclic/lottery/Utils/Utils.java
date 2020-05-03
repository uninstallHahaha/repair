package com.aclic.lottery.Utils;

import com.aclic.lottery.Models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Component
public class Utils {


    public static String genUUID(){
        return UUID.randomUUID().toString().substring(0,28);
    }


}
