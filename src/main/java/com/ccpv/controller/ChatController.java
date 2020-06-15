package com.ccpv.controller;

import com.ccpv.bean.Chat;
import com.ccpv.service.ChatService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("chat")
public class ChatController {

    @Autowired
    private ChatService chatService;

    @RequestMapping("toChatRoom")
    public ModelAndView findAllChat(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5") int size) {
        List<Chat> chats = chatService.findAllChat(page, size);
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfos = new PageInfo(chats);
        modelAndView.addObject("AllChat", pageInfos);
        modelAndView.setViewName("chatroom");
        return modelAndView;
    }

    @RequestMapping("addChat")
    public ModelAndView addChat(Chat chat, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5") int size) {
        chatService.addChat(chat);
        List<Chat> chats = chatService.findAllChat(page, size);
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfos = new PageInfo(chats);
        modelAndView.addObject("AllChat", pageInfos);
        modelAndView.setViewName("chatroom");
        return modelAndView;
    }
}
