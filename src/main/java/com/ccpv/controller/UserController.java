package com.ccpv.controller;

import com.ccpv.bean.User;
import com.ccpv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("login.do")
    public ModelAndView doLogin(User user, HttpServletResponse response, HttpSession httpSession) throws Exception{
        User loginUser = userService.doLogin(user);
        ModelAndView modelAndView = new ModelAndView();
        if (loginUser != null) {
            httpSession.setAttribute("User", loginUser);
            modelAndView.setViewName("main");
        } else {
            modelAndView.addObject("user", user);
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }

    @RequestMapping("toRegister")
    public String toRegister() {
        return "redirect:/register.jsp";
    }

    @RequestMapping("register.do")
    public String doRegister(User user, String codeTemp) {
        String page = null;
        /*if (userService.doRegister(user, codeTemp)) */
        if (userService.isExist(user.getUAccount()) == false && userService.doRegister(user, codeTemp)) {
            page = "redirect:/login.jsp";
        } else {
            page = "redirect:/register.jsp";
        }
        return page;
    }

    @RequestMapping("toForgetPassword")
    public String toForgetPassword() {
        return "redirect:/forgot_password.jsp";
    }

    @RequestMapping("ForgetPassword")
    public ModelAndView ForgetPassword(String UAccount) {
        userService.forgetPassword(UAccount);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("HomePage")
    public ModelAndView toHomePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("main");
        return modelAndView;
    }

    @RequestMapping("Question")
    public ModelAndView toQuestion() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("resizeable_panels");
        return modelAndView;
    }

    @RequestMapping("toLogin")
    public ModelAndView toLogin() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("/totoastr_notifications")
    public String totoastr_notifications() {
        return "toastr_notifications";
    }

    @RequestMapping("/update")
    public String update(User user, HttpSession httpSession) {
        userService.updateUserInfo(user);
        httpSession.setAttribute("User", user);
        return "main";
    }

    @RequestMapping("/send")
    public String send(String UAccount) {
        if (userService.sendMail(UAccount)) {
            return "Success";
        } else {
            return "Failure";
        }
    }
}
