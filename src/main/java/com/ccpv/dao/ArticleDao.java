package com.ccpv.dao;

import com.ccpv.bean.Article;

import java.util.List;

public interface ArticleDao {

    Integer maxAId();

    void publishArticle(Article article);

    Article getArticle(int AId);

    List<Article> getMyArticle(String UAccount);

    List<Article> getArticleByTag(String ATag);

    void updateArticleInfo(Article article);

    void updateAGlanceNum(int AId);

    void deleteArticle(int AId);

    void passArticle(int AId);

    List<Article> getAllUnpass();

    List<Article> getUnpass(String AReviewer);

    List<Article> findAllArticle();

    void updateArticleExpert(int AId, String AReviewer);

    void updateAContent(int AId, String AContent);
}
