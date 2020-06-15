package com.ccpv.service;

import com.ccpv.bean.Newsroom;

import java.util.List;

public interface NewsroomService {

    Newsroom getNewsroomByNId(int NId);

    void updateNotice(String NNotice, int NId);

    List<Newsroom> findAllNewsroom();
}
