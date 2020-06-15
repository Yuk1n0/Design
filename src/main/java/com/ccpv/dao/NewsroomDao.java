package com.ccpv.dao;

import com.ccpv.bean.Newsroom;

import java.util.List;

public interface NewsroomDao {

    Newsroom getNewsroomByNId(int NId);

    void updateNotice(String NNotice, int NId);

    List<Newsroom> findAllNewsroom();
}
