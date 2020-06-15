package com.ccpv.controller;

import com.ccpv.bean.Comment;
import com.ccpv.bean.User;
import com.ccpv.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("addComment")
    public String addComment(Comment comment) {
        commentService.addComment(comment);
        return "redirect:/article/getArticle?AId=" + comment.getAId();
    }
    @RequestMapping("addComments")
    public String addComments(Comment comment) {
        commentService.addComment(comment);
        return "redirect:/article/showArticle?AId=" + comment.getAId();
    }

    @RequestMapping("MyComment")
    public ModelAndView getMyComment(HttpServletResponse response, HttpSession httpSession) {
        List<Comment> comments = commentService.getCommentByUAccount(((User) httpSession.getAttribute("User")).getUAccount());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("MyComments", comments);
        modelAndView.setViewName("pin_board");
        return modelAndView;
    }

    @RequestMapping("deleteComment")
    public String deleteComment(int CId) {
        commentService.deleteComment(CId);
        return "redirect:/comment/MyComment";
    }
}
