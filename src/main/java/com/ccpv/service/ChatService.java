package com.ccpv.service;

import com.ccpv.bean.Chat;
import com.github.pagehelper.PageHelper;

import java.util.List;

public interface ChatService {

    List<Chat> findAllChat(int page, int size);

    void addChat(Chat chat);
}
