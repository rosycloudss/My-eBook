package com.my_ebook.mapper;

import com.my_ebook.entity.Reply;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyMapper {


    int insert(Reply reply);

    int delete(int replyId);

    int deleteByIds(@Param("replyIds") List<Integer> replyIds);

    int count(@Param("reply") Reply reply);

    int update(Reply reply);

    List<Reply> select(@Param("reply") Reply reply, @Param("page") Page<Reply> page);

}
