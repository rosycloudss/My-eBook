package com.my_ebook.controller.fg;

import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Comment;
import com.my_ebook.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/fg/contact")
@Controller
public class ContactController {
    private final CommentService bookCommentService;

    @Autowired
    public ContactController(CommentService bookCommentService){
        this.bookCommentService = bookCommentService;
    }
    @ResponseBody
    @RequestMapping(value = "/add",method = RequestMethod.POST )
    public JSONObject add(@RequestBody Comment comment) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(comment);
        if (comment != null && bookCommentService.add(comment) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }
}
