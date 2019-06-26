package com.my_ebook.mapper;

import com.my_ebook.entity.Comment;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @ClassName:CommentMapper
 * @Author:liwei
 * @Description: TODO 
 * @Date:2019/6/26 16:49
 * @Version: V1.0
 *
 */
public interface CommentMapper {

    int insert(Comment comment);

    int delete(int commentId);

    int deleteByIds(@Param("commentIds") List<Integer> commentIds);

    int update(Comment comment);

    int count(@Param("comment") Comment comment);

    List<Comment> select(@Param("comment") Comment comment, @Param("page") Page<Comment> page);
}
