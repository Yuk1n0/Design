package com.ccpv.service.impl;

import com.ccpv.bean.Newsroom;
import com.ccpv.dao.NewsroomDao;
import com.ccpv.service.NewsroomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class NewsroomServiceImpl implements NewsroomService {

    @Autowired
    private NewsroomDao newsroomDao;

    @Override
    public Newsroom getNewsroomByNId(int NId) {
        Newsroom newsroom = newsroomDao.getNewsroomByNId(NId);
        return newsroom;
    }

    @Override
    public void updateNotice(String NNotice, int NId) {
        newsroomDao.updateNotice(NNotice, NId);
    }

    @Override
    public List<Newsroom> findAllNewsroom() {
        List<Newsroom> newsrooms = newsroomDao.findAllNewsroom();
        return newsrooms;
    }
}
