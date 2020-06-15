package com.ccpv.bean;

import java.util.Date;

public class Chat {

    private int TId;
    private String UAccount;
    private Date TTime;
    private String TContent;

    public int getTId() {
        return TId;
    }

    @Override
    public String toString() {
        return "Chat{" +
                "TId=" + TId +
                ", UAccount='" + UAccount + '\'' +
                ", TTime=" + TTime +
                ", TContent='" + TContent + '\'' +
                '}';
    }

    public void setTId(int TId) {
        this.TId = TId;
    }

    public String getUAccount() {
        return UAccount;
    }

    public void setUAccount(String UAccount) {
        this.UAccount = UAccount;
    }

    public Date getTTime() {
        return TTime;
    }

    public void setTTime(Date TTime) {
        this.TTime = TTime;
    }

    public String getTContent() {
        return TContent;
    }

    public void setTContent(String TContent) {
        this.TContent = TContent;
    }
}
