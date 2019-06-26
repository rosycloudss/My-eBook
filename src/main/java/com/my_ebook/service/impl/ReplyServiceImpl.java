package com.my_ebook.service.impl;

import com.my_ebook.entity.Reply;
import com.my_ebook.mapper.ReplyMapper;
import com.my_ebook.service.ReplyService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    private ReplyMapper replyMapper;

    @Override
    public Reply findById(int replyId) {
        Reply reply = new Reply();
        reply.setID(replyId);

        List<Reply> replyList = replyMapper.select(reply,null);
        if(replyList != null && !replyList.isEmpty()){
            return replyList.get(0);
        }
        return null;
    }

    @Override
    public int deleteByIds(List<Integer> replyIds) {
        if (replyIds != null && !replyIds.isEmpty()) {
            return replyMapper.deleteByIds(replyIds);
        }
        return 0;
    }

    @Override
    public int add(Reply reply) {
        return replyMapper.insert(reply);
    }

    @Override
    public int delete(int id) {
        return replyMapper.delete(id);
    }

    @Override
    public int update(Reply reply) {
        return replyMapper.update(reply);
    }

    @Override
    public int count(Reply reply) {
        return replyMapper.count(reply);
    }

    @Override
    public Page<Reply> findAll(Reply reply, Page page) {
        page = initPage(reply,page);
        page.setPageInfos(replyMapper.select(reply,page));
        return page;
    }

    @Override
    public Page<Reply> initPage(Reply reply, Page<Reply> page) {
        if (page == null) {
            page = new Page<Reply>(count(reply), 1, 20);
        }
        return page;
    }
}
