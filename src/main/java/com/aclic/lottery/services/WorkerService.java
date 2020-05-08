package com.aclic.lottery.services;

import com.aclic.lottery.Models.Worker;
import com.aclic.lottery.Models.WorkerExample;
import com.aclic.lottery.daos.WorkerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkerService {

    @Autowired
    WorkerMapper workerMapper;

    public List<Worker> findAll(){
        return workerMapper.selectByExample(new WorkerExample());
    }

    public Worker findOneByName(String name){
        return  workerMapper.selectByName(name);
    }

    public int addUser(Worker worker) {
        return workerMapper.insert(worker);
    }

    public int assignTodo(String id) {
        return workerMapper.assignTodo(id);
    }

    public int delWorker(String id) {
        return workerMapper.deleteByPrimaryKey(id);
    }

}
