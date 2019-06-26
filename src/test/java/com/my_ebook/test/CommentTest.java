package com.my_ebook.test;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Comment;
import com.my_ebook.entity.Customer;
import com.my_ebook.service.CommentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CommentTest {

    @Autowired
    CommentService commentService;

    @Test
    public void addTest() {
        Comment comment = new Comment();
        Book book = new Book();
        book.setID(282);
        comment.setBook(book);
        Customer customer = new Customer();
        customer.setID(4);
        comment.setCustomer(customer);
        comment.setContent("超级好看");
        comment.setCommentDate(new Date(System.currentTimeMillis()));
        comment.setStatus(1);
        for (int i = 0; i < 10; i++) {
            System.out.println(commentService.add(comment));
        }
    }

    @Test
    public void findTest() {
        System.out.println(commentService.findBookComments(282, null));
        System.out.println("=========================================================");
        System.out.println(commentService.findCustomerComments(4, null));
        System.out.println("=========================================================");
        Comment comment = new Comment();
        Book book = new Book();
        book.setID(282);
        comment.setBook(book);
        Customer customer = new Customer();
        customer.setID(4);
        comment.setCustomer(customer);
        comment.setContent("超级好看");
        comment.setCommentDate(new Date(System.currentTimeMillis()));
        comment.setStatus(1);
        System.out.println(commentService.findAll(comment, null));

    }
}
