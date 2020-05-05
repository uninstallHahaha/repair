package com.aclic.lottery.services;

import com.aclic.lottery.Models.Comment;
import com.aclic.lottery.daos.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {

    @Autowired
    CommentMapper commentMapper;


    public Comment findOne(String rid) {
        return commentMapper.selectByRecordId(rid);
    }

    public int addComment(Comment comment) {
        return commentMapper.insert(comment);
    }
}
