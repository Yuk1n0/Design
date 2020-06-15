package com.ccpv.dao;

import com.ccpv.bean.Comment;

import java.util.List;

public interface CommentDao {

    void addComment(Comment comment);

    List<Comment> getCommentByAId(int AId);

    void deleteComment(int CId);

    void deleteCommentByAId(int AId);

    List<Comment> getCommentByUAccount(String UAccount);
}