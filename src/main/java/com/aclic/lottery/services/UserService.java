package com.aclic.lottery.services;

import com.aclic.lottery.Models.User;
import com.aclic.lottery.Models.UserExample;
import com.aclic.lottery.daos.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    public List<User> findAll(){
        return userMapper.selectByExample(new UserExample());
    }
}
