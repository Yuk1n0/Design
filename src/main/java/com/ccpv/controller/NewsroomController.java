package com.ccpv.controller;

import com.ccpv.bean.Article;
import com.ccpv.bean.Newsroom;
import com.ccpv.bean.User;
import com.ccpv.service.ArticleService;
import com.ccpv.service.NewsroomService;
import com.ccpv.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("newsroom")
public class NewsroomController {

    @Autowired
    private NewsroomService newsroomService;
    @Autowired
    private UserService userService;
    @Autowired
    private ArticleService articleService;

    @RequestMapping("toNewsroom")
    public ModelAndView getNewsroomByNId(int NId, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        Newsroom newsroom = newsroomService.getNewsroomByNId(NId);
        List<User> users = userService.findAllNewsroom(NId, page, size);
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfo = new PageInfo(users);
        mv.addObject("Newsroom", newsroom);
        mv.addObject("NewsroomUsers", pageInfo);
        mv.setViewName("toNewsroom");
        return mv;
    }

    @RequestMapping("toNewsroomAdmin")
    public ModelAndView toNewsroomAdmin(int NId, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        Newsroom newsroom = newsroomService.getNewsroomByNId(NId);
        List<User> users = userService.findAllNewsroomUsers(page, size);
        List<Newsroom> newsrooms = newsroomService.findAllNewsroom();
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfo = new PageInfo(users);
        modelAndView.addObject("Newsroom", newsroom);
        modelAndView.addObject("AllNewsroom", newsrooms);
        modelAndView.addObject("AllNewsroomUsers", pageInfo);
        modelAndView.setViewName("toNewsroomAdmin");
        return modelAndView;
    }

    @RequestMapping("updateNotice")
    public String updateNotice(String NNotice, int NId, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        newsroomService.updateNotice(NNotice, NId);
        return "redirect:/newsroom/toNewsroomAdmin?NId=" + NId;
    }

    @RequestMapping("updateUserNewsroom")
    public String updateUserNewsroom(int UId, int NId, int BelongNId) {
        userService.updateUserNewsroom(UId, NId);
        return "redirect:/newsroom/toNewsroomAdmin?NId=" + BelongNId;
    }

    @RequestMapping("updateUserNewsroomTest")
    public String updateUserNewsroomTest(User user, int BelongNId, HttpSession httpSession) {
        userService.updateUserNewsroomTest(user);
        httpSession.setAttribute("User", user);
        return "redirect:/newsroom/toNewsroomAdmin?NId=" + BelongNId;
    }

    @RequestMapping("toManageArticle")
    public ModelAndView toManageArticle(int NId, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        Newsroom newsroom = newsroomService.getNewsroomByNId(NId);
        List<Article> articles = articleService.findAllArticle(page, size);
        List<User> users = userService.findExpert();
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfo = new PageInfo(articles);
        modelAndView.addObject("Newsroom", newsroom);
        modelAndView.addObject("AllArticle", pageInfo);
        modelAndView.addObject("AllExpert", users);
        modelAndView.setViewName("articlemanager");
        return modelAndView;
    }

    @RequestMapping("updateArticleExpert")
    public String updateArticleExpert(int AId, String AReviewer, int BelongNId) {
        articleService.updateArticleExpert(AId, AReviewer);
        return "redirect:/newsroom/toManageArticle?NId=" + BelongNId;
    }
}
