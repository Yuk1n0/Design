package com.ccpv.dao;

import com.ccpv.bean.User;

import java.util.List;

public interface UserDao {

    User doLogin(User user);

    void doRegister(User user);

    User isExist(String UAccount);

    void updateUserInfo(User user);

    User getUserInfo(String UAccount);

    List<User> findAllNewsroom(int NId);

    List<User> findAllNewsroomUsers();

    void updateUserNewsroom(int UId, int NId);

    void updateUserNewsroomTest(User user);

    List<User> findExpert();
}
