package com.my_ebook.service;

import com.my_ebook.entity.Comment;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;

public interface CommentService extends BaseService<Comment>, PageService<Comment> {


    public int deleteByIds(List<Integer> commentIds);

    /**
     * 查询顾客的评论
     *
     * @param customerId
     * @param page
     * @return
     */
    Page<Comment> findCustomerComments(int customerId, Page page);

    /**
     * 查询图书的评论
     * @param bookId
     * @param page
     * @return
     */
    Page<Comment> findBookComments(int bookId, Page page);
}
