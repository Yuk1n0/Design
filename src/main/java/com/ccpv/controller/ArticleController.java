package com.ccpv.controller;

import com.ccpv.bean.Article;
import com.ccpv.bean.Comment;
import com.ccpv.service.ArticleService;
import com.ccpv.service.CommentService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("article")
public class ArticleController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private CommentService commentService;

    @RequestMapping("toFormEditor")
    public ModelAndView toFormEditor() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("form_editors");
        return mv;
    }

    @RequestMapping("addArticle")
    @ResponseBody
    public String addArticle(@RequestParam String ATitle, @RequestParam String UAccount, @RequestParam String[] array, @RequestParam String ATag) {
        Article article = new Article();
        article.setAName(ATitle);
        article.setUAccount(UAccount);
        article.setATag(ATag);
        article.setAGlanceNum(0);
        article.setATime(new Date());
        article.setAPass(0);
        article.setAReviewer("null");
        String s = "";
        for (String str : array) {
            s += str;
        }
        article.setAContent(s);
        if (articleService.publishArticle(article))
            return "Success!";
        else
            return "Failure！";
    }

    @RequestMapping("deleteArticle")
    public ModelAndView deleteArticle(int AId) {
        articleService.deleteArticle(AId);
        commentService.deleteCommentByAId(AId);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("main");
        return mv;
    }

    //从我的稿件过来的
    @RequestMapping("showArticle")
    public ModelAndView gotoBlog(int AId) {
        Article article = articleService.getArticle(AId);
        articleService.updateAGlanceNum(AId);
        List<Comment> comments = commentService.getCommentByAId(AId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("AArticle", article);
        mv.addObject("AArticleComment", comments);
        mv.setViewName("articleunpass");
        return mv;
    }

    //从稿件中心过来的
    @RequestMapping("getArticle")
    public ModelAndView getArticle(int AId) {
        Article article = articleService.getArticle(AId);
        articleService.updateAGlanceNum(AId);
        List<Comment> comments = commentService.getCommentByAId(AId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("AArticle", article);
        mv.addObject("AArticleComment", comments);
        mv.setViewName("article");
        return mv;
    }

    @RequestMapping("getAllUnpass")
    public ModelAndView getAllUnpass(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        List<Article> articles = articleService.getAllUnpass(page, size);
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfo = new PageInfo(articles);
        modelAndView.addObject("UnpassArticle", pageInfo);
        modelAndView.setViewName("blogallunpass");
        return modelAndView;
    }

    @RequestMapping("getUnpass")
    public ModelAndView getUnpass(String AReviewer, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        List<Article> articles = articleService.getUnpass(AReviewer, page, size);
        ModelAndView modelAndView = new ModelAndView();
        PageInfo pageInfo = new PageInfo(articles);
        modelAndView.addObject("UnpassArticle", pageInfo);
        modelAndView.setViewName("blogunpass");
        return modelAndView;
    }

    @RequestMapping("getMyArticle")
    public ModelAndView getMyArticles(String UAccount, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        List<Article> articleList = articleService.getMyArticle(UAccount, page, size);
        ModelAndView mv = new ModelAndView();
        PageInfo pageInfos = new PageInfo(articleList);
        mv.addObject("MyArticleList", pageInfos);
        mv.setViewName("myblog");
        return mv;
    }

    @RequestMapping("getArticleByTag")
    public ModelAndView getArticleByTag(String ATag, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "9") int size) {
        try {
            String tag = ATag;
            List<Article> articleInfoList = articleService.getArticleByTag(tag, page, size);

            System.out.println("\n\n\n" + articleInfoList.size());
            PageInfo pageInfos = new PageInfo(articleInfoList);
            ModelAndView mv = new ModelAndView();
            mv.addObject("Tag", ATag);
            mv.addObject("pageInfos", pageInfos);
            switch (tag) {
                case "politics":
                    mv.setViewName("blog");
                    break;
                case "economy":
                    mv.setViewName("blog1");
                    break;
                case "civilization":
                    mv.setViewName("blog2");
                    break;
                case "military":
                    mv.setViewName("blog3");
                    break;
                case "livelihood":
                    mv.setViewName("blog4");
                    break;
            }
            return mv;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping("passArticle")
    public String passArticle(int AId) {
        articleService.passArticle(AId);
        return "redirect:/article/showArticle?AId=" + AId;
    }

    @RequestMapping("updateAContent")
    public String updateAContent(int AId, String AContent) {
        articleService.updateAContent(AId, AContent);
        return "redirect:/article/getArticle?AId=" + AId;
    }
}
