package com.aclic.lottery.services;

import com.aclic.lottery.Models.Record;
import com.aclic.lottery.daos.RecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordService {

    @Autowired
    RecordMapper recordMapper;

    public int addRecord(Record record){
        return recordMapper.insert(record);
    }


    public int modPayState(String rid) {

        return recordMapper.modPayState(rid);
    }

    public Record findOne(String id){
        return recordMapper.selectByPrimaryKey(id);
    }

    public int modPayStateTo28(String id) {
        return recordMapper.updatePayStateTo28(id);
    }
}
