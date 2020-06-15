package com.ccpv.service.impl;

import com.ccpv.bean.Comment;
import com.ccpv.dao.CommentDao;
import com.ccpv.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public void addComment(Comment comment) {
        comment.setCTime(new Date());
        commentDao.addComment(comment);
    }

    @Override
    public List<Comment> getCommentByAId(int AId) {
        return commentDao.getCommentByAId(AId);
    }

    @Override
    public void deleteComment(int CId) {
        commentDao.deleteComment(CId);
    }

    @Override
    public void deleteCommentByAId(int AId) {
        commentDao.deleteCommentByAId(AId);
    }

    @Override
    public List<Comment> getCommentByUAccount(String UAccount) {
        return commentDao.getCommentByUAccount(UAccount);
    }
}
