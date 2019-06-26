package com.my_ebook.service.impl;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Comment;
import com.my_ebook.entity.Customer;
import com.my_ebook.mapper.CommentMapper;
import com.my_ebook.service.CommentService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    public Page<Comment> findCustomerComments(int customerId, Page page) {
        Comment comment = new Comment();
        Customer customer = new Customer();
        customer.setID(customerId);
        comment.setCustomer(customer);
        return findAll(comment, page);
    }

    @Override
    public Page<Comment> findBookComments(int bookId, Page page) {
        Comment comment = new Comment();
        Book book = new Book();
        book.setID(bookId);
        comment.setBook(book);
        return findAll(comment, page);
    }

    public int add(Comment comment) {
        return commentMapper.insert(comment);
    }

    public int delete(int id) {
        return commentMapper.delete(id);
    }

    public int update(Comment comment) {
        return commentMapper.update(comment);
    }

    public int count(Comment comment) {
        return commentMapper.count(comment);
    }

    public Page<Comment> findAll(Comment comment, Page page) {
        page = initPage(comment, page);
        page.setPageInfos(commentMapper.select(comment, page));
        return page;
    }

    public Page<Comment> initPage(Comment comment, Page<Comment> page) {
        if (page == null) {
            page = new Page<Comment>(count(comment), 1, 20);
        }
        return page;
    }

}
