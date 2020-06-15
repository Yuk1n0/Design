package com.ccpv.bean;

import java.util.Date;

public class Article {

    private int AId;            //文章编号
    private String AName;       //文章名
    private String ATag;        //标签
    private String UAccount;    //发布用户
    private String AContent;    //文章内容
    private int AGlanceNum;     //浏览量
    private Date ATime;         //发布时间
    private int APass;          //是否审核通过
    private String AReviewer;   //审核人员

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

    public String getATag() {
        return ATag;
    }

    public void setATag(String ATag) {
        this.ATag = ATag;
    }

    public String getUAccount() {
        return UAccount;
    }

    public void setUAccount(String UAccount) {
        this.UAccount = UAccount;
    }

    public String getAContent() {
        return AContent;
    }

    public void setAContent(String AContent) {
        this.AContent = AContent;
    }

    public int getAGlanceNum() {
        return AGlanceNum;
    }

    public void setAGlanceNum(int AGlanceNum) {
        this.AGlanceNum = AGlanceNum;
    }

    public Date getATime() {
        return ATime;
    }

    public void setATime(Date ATime) {
        this.ATime = ATime;
    }

    public int getAPass() {
        return APass;
    }

    public void setAPass(int APass) {
        this.APass = APass;
    }

    public String getAReviewer() {
        return AReviewer;
    }

    public void setAReviewer(String AReviewer) {
        this.AReviewer = AReviewer;
    }

    @Override
    public String toString() {
        return "Article{" +
                "AId=" + AId +
                ", AName='" + AName + '\'' +
                ", ATag='" + ATag + '\'' +
                ", UAccount='" + UAccount + '\'' +
                ", AContent='" + AContent + '\'' +
                ", AGlanceNum=" + AGlanceNum +
                ", ATime=" + ATime +
                ", APass=" + APass +
                ", AReviewer='" + AReviewer + '\'' +
                '}';
    }
}
