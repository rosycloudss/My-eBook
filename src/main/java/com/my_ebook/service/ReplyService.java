package com.my_ebook.service;

import com.my_ebook.entity.Reply;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;

import java.util.List;

public interface ReplyService extends BaseService<Reply>, PageService<Reply> {


    /**
     * 查询单个回复信息
     *
     * @param replyId
     * @return
     */
    Reply findById(int replyId);

    /**
     * @param replyIds
     * @return
     */
    int deleteByIds(List<Integer> replyIds);


}
