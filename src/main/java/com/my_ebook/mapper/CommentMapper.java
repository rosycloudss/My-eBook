package com.my_ebook.mapper;

import com.my_ebook.entity.Comment;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {

    int insert(Comment comment);

    int delete(int commentId);

    int update(Comment comment);

    int count(@Param("comment") Comment comment);

    List<Comment> select(@Param("comment") Comment comment, @Param("page") Page<Comment> page);
}
