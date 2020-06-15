package com.ccpv.service.impl;

import com.ccpv.bean.Chat;
import com.ccpv.dao.ChatDao;
import com.ccpv.service.ChatService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    private ChatDao chatDao;

    @Override
    public List<Chat> findAllChat(int page, int size) {
        PageHelper.startPage(page, size);
        List<Chat> chats = chatDao.findAllChat();
        return chats;
    }

    @Override
    public void addChat(Chat chat) {
        chat.setTTime(new Date());
        chatDao.addChat(chat);
    }
}
