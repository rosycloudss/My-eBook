package com.my_ebook.test;

import com.my_ebook.entity.Reply;
import com.my_ebook.service.ReplyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class ReplyTest {


    @Autowired
    ReplyService replyService;

    @Test
    public void addTest() {
        Reply reply = new Reply();
        reply.setcName("李伟");
        reply.setEmail("1759840027@qq.com");
        reply.setContent("jksdfalksdjflasjdfl");
        reply.setReplyDate(new Date(System.currentTimeMillis()));
        reply.setIp("10.100.222.99");
        for (int i = 0; i < 100; i++) {
            reply.setcName("李伟 " + i);
            replyService.add(reply);
        }
    }
}
