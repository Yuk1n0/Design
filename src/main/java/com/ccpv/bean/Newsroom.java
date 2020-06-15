package com.ccpv.bean;

public class Newsroom {

    private int NId;
    private String NName;
    private String NIntroduction;
    private String NNotice;

    public int getNId() {
        return NId;
    }

    public void setNId(int NId) {
        this.NId = NId;
    }

    public String getNName() {
        return NName;
    }

    public void setNName(String NName) {
        this.NName = NName;
    }

    public String getNIntroduction() {
        return NIntroduction;
    }

    public void setNIntroduction(String NIntroduction) {
        this.NIntroduction = NIntroduction;
    }

    public String getNNotice() {
        return NNotice;
    }

    public void setNNotice(String NNotice) {
        this.NNotice = NNotice;
    }

    @Override
    public String toString() {
        return "Newsroom{" +
                "NId=" + NId +
                ", NName='" + NName + '\'' +
                ", NIntroduction='" + NIntroduction + '\'' +
                ", NNotice='" + NNotice + '\'' +
                '}';
    }
}
