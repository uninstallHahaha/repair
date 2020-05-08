package com.aclic.lottery.daos;

import com.aclic.lottery.Models.Record;
import com.aclic.lottery.Models.RecordExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecordMapper {
    long countByExample(RecordExample example);

    int deleteByExample(RecordExample example);

    int deleteByPrimaryKey(String id);

    int insert(Record record);

    int insertSelective(Record record);

    List<Record> selectByExample(RecordExample example);

    Record selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Record record, @Param("example") RecordExample example);

    int updateByExample(@Param("record") Record record, @Param("example") RecordExample example);

    int updateByPrimaryKeySelective(Record record);

    int updateByPrimaryKey(Record record);

    //更新支付状态
    int modPayState(String rid);

    //支付逾期
    int updatePayStateTo28(String id);

    List<Record> selectDoingByUserid(String s);

    List<Record> selectDoneByUserid(String id);

    List<Record> selectDone();

    List<Record> selectNoDeal();

    List<Record> selectDealed(String wid);


    int checkOkReord(String id);

    int refuseRecord(String id);

    List<Record> selectTodo(String wid);

    int finishRecord(String id);
}