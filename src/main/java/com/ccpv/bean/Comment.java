package com.ccpv.bean;

import java.util.Date;

public class Comment {

    private int CId;            //评论编号
    private int AId;            //所属文章
    private String AName;       //文章标题
    private Date CTime;         //评论时间
    private String CContent;    //评论内容
    private String UAccount;    //发表账号

    public int getCId() {
        return CId;
    }

    public void setCId(int CId) {
        this.CId = CId;
    }

    public int getAId() {
        return AId;
    }

    public void setAId(int AId) {
        this.AId = AId;
    }

    public String getAName() {
        return AName;
    }

    public void setAName(String AName) {
        this.AName = AName;
    }

    public Date getCTime() {
        return CTime;
    }

    public void setCTime(Date CTime) {
        this.CTime = CTime;
    }

    public String getCContent() {
        return CContent;
    }

    public void setCContent(String CContent) {
        this.CContent = CContent;
    }

    public String getUAccount() {
        return UAccount;
    }

    public void setUAccount(String UAccount) {
        this.UAccount = UAccount;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "CId=" + CId +
                ", AId=" + AId +
                ", AName='" + AName + '\'' +
                ", CTime=" + CTime +
                ", CContent='" + CContent + '\'' +
                ", UAccount='" + UAccount + '\'' +
                '}';
    }
}