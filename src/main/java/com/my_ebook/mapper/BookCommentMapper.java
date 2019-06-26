package com.my_ebook.mapper;

import com.my_ebook.entity.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookCommentMapper {

    public int delete(String commentId);

    public int insert(Comment bookComment);

    public List<Comment> getByBookId(int bookId);

    public List<Comment> getAll();
}
