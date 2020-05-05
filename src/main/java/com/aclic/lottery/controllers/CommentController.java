package com.aclic.lottery.controllers;

import com.aclic.lottery.Models.Comment;
import com.aclic.lottery.Utils.Utils;
import com.aclic.lottery.services.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentController {

    @Autowired
    CommentService commentService;

    @ResponseBody
    @RequestMapping("/subComment")
    public int subComment(String rid, int star, String cominfo){
        Comment comment = new Comment();
        comment.setId(Utils.genUUID());
        comment.setStar(star);
        comment.setUserid("xxxx");
        comment.setComment(cominfo);
        comment.setRecordid(rid);
        comment.setUsername("alice");
        return commentService.addComment(comment);
    }
}
