package com.ccpv.bean;

public class User {

    private int UId;
    private String UAccount;
    private String UName;
    private String UPassword;
    private String UIntroduction;
    private int UPower;
    private int NId;

    public int getUId() {
        return UId;
    }

    public void setUId(int UId) {
        this.UId = UId;
    }

    public String getUAccount() {
        return UAccount;
    }

    public void setUAccount(String UAccount) {
        this.UAccount = UAccount;
    }

    public String getUName() {
        return UName;
    }

    public void setUName(String UName) {
        this.UName = UName;
    }

    public String getUPassword() {
        return UPassword;
    }

    public void setUPassword(String UPassword) {
        this.UPassword = UPassword;
    }

    public String getUIntroduction() {
        return UIntroduction;
    }

    public void setUIntroduction(String UIntroduction) {
        this.UIntroduction = UIntroduction;
    }

    public int getUPower() {
        return UPower;
    }

    public void setUPower(int UPower) {
        this.UPower = UPower;
    }

    public int getNId() {
        return NId;
    }

    public void setNId(int NId) {
        this.NId = NId;
    }


    @Override
    public String toString() {
        return "User{" +
                "UId=" + UId +
                ", UAccount='" + UAccount + '\'' +
                ", UName='" + UName + '\'' +
                ", UPassword='" + UPassword + '\'' +
                ", UIntroduction='" + UIntroduction + '\'' +
                ", UPower=" + UPower +
                ", NId=" + NId +
                '}';
    }
}
