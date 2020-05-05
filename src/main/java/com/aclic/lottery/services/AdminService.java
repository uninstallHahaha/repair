package com.aclic.lottery.services;

import com.aclic.lottery.Models.Admin;
import com.aclic.lottery.Models.AdminExample;
import com.aclic.lottery.Models.User;
import com.aclic.lottery.daos.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    AdminMapper adminMapper;

    public List<Admin> findAll(){
        return adminMapper.selectByExample(new AdminExample());
    }

    public Admin findOneByName(String name){
        return  adminMapper.selectByName(name);
    }

    public int addUser(Admin admin) {
        return adminMapper.insert(admin);
    }
}
