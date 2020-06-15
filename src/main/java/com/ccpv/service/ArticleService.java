package com.ccpv.service;

import com.ccpv.bean.Article;

import java.util.List;

public interface ArticleService {

    boolean publishArticle(Article article);

    void updateArticleInfo(Article article);

    void updateAGlanceNum(int AId);

    Article getArticle(int AId);

    List<Article> getMyArticle(String UAccount, int page, int size);

    List<Article> getArticleByTag(String ATag, int page, int size);

    void deleteArticle(int AId);

    void passArticle(int AId);

    List<Article> getAllUnpass(int page, int size);

    List<Article> getUnpass(String AReviewer, int page, int size);

    List<Article> findAllArticle(int page, int size);

    void updateArticleExpert(int AId, String AReviewer);

    void updateAContent(int AId, String AContent);
}
