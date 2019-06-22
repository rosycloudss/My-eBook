package com.my_ebook.entity;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @ClassName:Comment
 * @Author:liwei
 * @Description: TODO 图书评论
 * @Date:2019/6/20 23:18
 * @Version: V1.0
 */
@Component
public class Comment {
    /**
     * 评论图书
     */
    private Book book;
    /**
     * 评论人
     */
    private Customer customer;
    /**
     * 评论编号
     */
    private Integer ID;
    /**
     * 评论内容
     */
    private String content;
    /**
     * 评论时间
     */
    private Date commentDate;
    /**
     * 审核状态（已审核 1  未审核 0）
     */
    private Integer status;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getStatusStr() {
        switch (status) {
            case 1:
                return "已审核";
            case 0:
                return "未审核";
            default:
                return "";
        }
    }

    @Override
    public String toString() {
        return "Comment{" +
                "book=" + book +
                ", customer=" + customer +
                ", ID=" + ID +
                ", content='" + content + '\'' +
                ", commentDate=" + commentDate +
                ", status=" + status +
                '}';
    }
}