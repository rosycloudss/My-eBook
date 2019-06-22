package com.my_ebook.service.impl;

import com.my_ebook.entity.Comment;
import com.my_ebook.service.CommentService;
import com.my_ebook.vo.Page;

public class CommentServiceImpl implements CommentService {
    public Page<Comment> findCustomerComments(int customerId, Page page) {
        return null;
    }

    public int add(Comment comment) {
        return 0;
    }

    public int delete(int id) {
        return 0;
    }

    public int update(Comment comment) {
        return 0;
    }

    public int count(Comment comment) {
        return 0;
    }

    public Page<Comment> findAll(Comment comment, Page page) {
        return null;
    }

    public Page<Comment> initPage(Comment comment, Page<Comment> page) {
        return null;
    }
}
