package com.aclic.lottery.services;

import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.RecordExample;
import com.aclic.lottery.daos.RecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

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

    public List<Record> findAllByUserid(String s) {
        return recordMapper.selectByExample(new RecordExample());
    }

    public List<Record> findDoingByUserid(String s) {
     return recordMapper.selectDoingByUserid(s);

    }

    public List<Record> findDone() {
        return recordMapper.selectDone();
    }
    public List<Record> findDoneByUserid(String s) {
        return recordMapper.selectDoneByUserid(s);
    }

    public int delRecord(String id) {
        return recordMapper.deleteByPrimaryKey(id);
    }

    //del list
    public int delRecordList(List<String> ids){
        int res = 1;
        for (String id:
                ids) {
            int curres= recordMapper.deleteByPrimaryKey(id);
            if(curres != 1){
                res = 0;
            }
        }
        return res;
    }
}
