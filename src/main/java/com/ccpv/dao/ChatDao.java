package com.ccpv.dao;

import com.ccpv.bean.Chat;

import java.util.List;

public interface ChatDao {

    List<Chat> findAllChat();

    void addChat(Chat chat);
}
