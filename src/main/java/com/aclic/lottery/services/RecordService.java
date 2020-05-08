package com.aclic.lottery.services;

import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.RecordExample;
import com.aclic.lottery.daos.RecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        return recordMapper.selectByUserId(s);
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

    public List<Record> findAllNoDeal() {
        return recordMapper.selectNoDeal();
    }

    public int update(Record one) {
        return recordMapper.updateByPrimaryKey(one);
    }

    public List<Record> findAllDealed(String wid) {
        return recordMapper.selectDealed(wid);
    }

    public int checkOkRecord(String id) {
        return recordMapper.checkOkReord(id);
    }

    public int refuseRecord(String id) {
        return recordMapper.refuseRecord(id);
    }

    public List<Record> findAllTodo(String wid) {
        return recordMapper.selectTodo(wid);
    }

    public int finishRecord(String id) {
        return recordMapper.finishRecord(id);
    }

    public List<Record> findAllFinish(String wid) {
        return recordMapper.findAllFinish(wid);
    }

    public List<Record> findAllDealedByUserId(String id) {
        return recordMapper.findAllDealedByUserId(id);
    }

    public List<Record> findAllTodoByUserId(String id) {
        return recordMapper.findAllTodoByUserId(id);
    }

    public List<Record> findAllFinishByUserId(String id) {
        return recordMapper.findAllFinishByUserId(id);
    }
}
