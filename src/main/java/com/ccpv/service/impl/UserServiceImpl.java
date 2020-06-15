package com.ccpv.service.impl;

import com.ccpv.bean.User;
import com.ccpv.dao.UserDao;
import com.ccpv.service.UserService;
import com.ccpv.util.MailUtil;
import com.github.pagehelper.PageHelper;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao UserDao;
    private String code;

    @Override
    public User doLogin(User user) throws Exception {
        String base64 = BASE64(user.getUPassword());
        user.setUPassword(base64);
        User user1 = UserDao.doLogin(user);
        return user1;
    }

    @Override
    public boolean doRegister(User user, String codeTemp) {
        if (codeTemp.equals(code)) {
            try {
                String base64 = BASE64(user.getUPassword());
                user.setUPassword(base64);
                user.setUPower(1);
                user.setNId(1);
                UserDao.doRegister(user);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } else {
            return false;
        }
    }

    @Override
    public boolean isExist(String UAccount) {
        User user = UserDao.isExist(UAccount);
        if (user != null)
            return true;
        else
            return false;
    }

    @Override
    public void updateUserInfo(User user) {
        String base64 = BASE64(user.getUPassword());
        user.setUPassword(base64);
        UserDao.updateUserInfo(user);
    }

    @Override
    public boolean sendMail(String UAccount) {
        try {
            code = MailUtil.getRandomString();
            MailUtil.send_mail(UAccount, code);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void forgetPassword(String UAccount) {
        User user = UserDao.getUserInfo(UAccount);
        if (user != null && sendMail(UAccount)) {
            String base64 = BASE64(code);
            user.setUPassword(base64);
            UserDao.updateUserInfo(user);
        }
    }

    @Override
    public List<User> findAllNewsroom(int NId, int page, int size) {
        PageHelper.startPage(page, size);
        List<User> users = UserDao.findAllNewsroom(NId);
        return users;
    }

    @Override
    public List<User> findAllNewsroomUsers(int page, int size) {
        PageHelper.startPage(page, size);
        List<User> users = UserDao.findAllNewsroomUsers();
        return users;
    }

    @Override
    public void updateUserNewsroom(int UId, int NId) {
        UserDao.updateUserNewsroom(UId, NId);
    }

    public void updateUserNewsroomTest(User user) {
        UserDao.updateUserNewsroomTest(user);
    }

    @Override
    public List<User> findExpert() {
        List<User> users = UserDao.findExpert();
        return users;
    }

    public String BASE64(String password) {
        Base64 base64 = new Base64();
        byte[] textByte = password.getBytes();
        String encodedText = base64.encodeToString(textByte);
        return encodedText;
    }
}
