package com.my_ebook.controller.fg;

import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Reply;
import com.my_ebook.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@RequestMapping("/fg/contact")
@Controller
public class ContactController {
    private final ReplyService replyService;

    @Autowired
    public ContactController(ReplyService replyService){
        this.replyService = replyService;
    }

    @ResponseBody
    @RequestMapping(value = "/addReply",method = RequestMethod.POST )
    public JSONObject add(@RequestBody Reply reply, HttpServletRequest request) {

        JSONObject jsonObject = new JSONObject();
        int result = 0;
        String ip=request.getRemoteAddr();
        Date date=new Date();
        reply.setIp(ip);
        reply.setReplyDate(date);

        if (reply != null && replyService.add(reply) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }
}