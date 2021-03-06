package com.aclic.lottery.Models;

import java.util.Date;

public class Record {
    private String id;

    private String subuserid;

    private String dealuserid;

    private String assignuserid;

    private Date ctime;

    private Date dtime;

    private Date atime;

    private Date finishtime;

    private String username;

    private String userphone;

    private Date rtime;

    private Integer state;

    private Integer type;

    private String whereRepair;

    private String detail;

    private String pic;

    private Integer payState;

    private Integer payPrice;

    private Date payTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSubuserid() {
        return subuserid;
    }

    public void setSubuserid(String subuserid) {
        this.subuserid = subuserid == null ? null : subuserid.trim();
    }

    public String getDealuserid() {
        return dealuserid;
    }

    public void setDealuserid(String dealuserid) {
        this.dealuserid = dealuserid == null ? null : dealuserid.trim();
    }

    public String getAssignuserid() {
        return assignuserid;
    }

    public void setAssignuserid(String assignuserid) {
        this.assignuserid = assignuserid == null ? null : assignuserid.trim();
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public Date getDtime() {
        return dtime;
    }

    public void setDtime(Date dtime) {
        this.dtime = dtime;
    }

    public Date getAtime() {
        return atime;
    }

    public void setAtime(Date atime) {
        this.atime = atime;
    }

    public Date getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(Date finishtime) {
        this.finishtime = finishtime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public Date getRtime() {
        return rtime;
    }

    public void setRtime(Date rtime) {
        this.rtime = rtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getWhereRepair() {
        return whereRepair;
    }

    public void setWhereRepair(String whereRepair) {
        this.whereRepair = whereRepair == null ? null : whereRepair.trim();
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Integer getPayState() {
        return payState;
    }

    public void setPayState(Integer payState) {
        this.payState = payState;
    }

    public Integer getPayPrice() {
        return payPrice;
    }

    public void setPayPrice(Integer payPrice) {
        this.payPrice = payPrice;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }
}