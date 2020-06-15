package com.ccpv.service;

import com.ccpv.bean.User;

import java.util.List;

public interface UserService {

    User doLogin(User user) throws Exception;

    boolean doRegister(User user, String codeTemp);

    boolean isExist(String UAccount);

    void updateUserInfo(User user);

    boolean sendMail(String UAccount);

    void forgetPassword(String UAccount);

    List<User> findAllNewsroom(int NId, int page, int size);

    List<User> findAllNewsroomUsers(int page, int size);

    void updateUserNewsroom(int UId, int NId);

    void updateUserNewsroomTest(User user);

    List<User> findExpert();

    String BASE64(String password);
}
