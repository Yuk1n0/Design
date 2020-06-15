package com.ccpv.service.impl;

import com.ccpv.bean.Article;
import com.ccpv.dao.ArticleDao;
import com.ccpv.dao.CommentDao;
import com.ccpv.service.ArticleService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private CommentDao commentDao;

    @Override
    public boolean publishArticle(Article article) {
        articleDao.publishArticle(article);
        return true;
    }

    @Override
    public void updateArticleInfo(Article article) {
        articleDao.updateArticleInfo(article);
    }

    @Override
    public void updateAGlanceNum(int AId) {
        articleDao.updateAGlanceNum(AId);
    }

    @Override
    public Article getArticle(int AId) {
        Article article = articleDao.getArticle(AId);
        return article;
    }

    @Override
    public void deleteArticle(int AId) {
        Article article = articleDao.getArticle(AId);
        commentDao.deleteCommentByAId(AId);
        articleDao.deleteArticle(AId);
    }

    @Override
    public void passArticle(int AId) {
        articleDao.passArticle(AId);
    }

    @Override
    public List<Article> getAllUnpass(int page, int size) {
        PageHelper.startPage(page, size);
        List<Article> articles = articleDao.getAllUnpass();
        return articles;
    }

    @Override
    public List<Article> getUnpass(String AReviewer, int page, int size) {
        PageHelper.startPage(page, size);
        List<Article> articles = articleDao.getUnpass(AReviewer);
        return articles;
    }

    @Override
    public List<Article> findAllArticle(int page, int size) {
        PageHelper.startPage(page, size);
        List<Article> articles = articleDao.findAllArticle();
        return articles;
    }

    @Override
    public void updateArticleExpert(int AId, String AReviewer) {
        articleDao.updateArticleExpert(AId, AReviewer);
    }

    @Override
    public void updateAContent(int AId, String AContent) {
        articleDao.updateAContent(AId, AContent);
    }

    @Override
    public List<Article> getMyArticle(String UAccount, int page, int size) {
        PageHelper.startPage(page, size);
        List<Article> articles = articleDao.getMyArticle(UAccount);
        return articles;
    }

    @Override
    public List<Article> getArticleByTag(String ATag, int page, int size) {
        PageHelper.startPage(page, size);
        List<Article> articles = articleDao.getArticleByTag(ATag);
        return articles;
    }
}
