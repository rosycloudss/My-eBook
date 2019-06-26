package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Comment;
import com.my_ebook.service.CommentService;
import com.my_ebook.util.StringUtil;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @ClassName:CommentController
 * @Author:liwei
 * @Description: TODO
 * @Date:2019/6/26 16:26
 * @Version: V1.0
 */
@Controller("bgCommentController")
@RequestMapping("/bg/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    /**
     * 查询 评论列表
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(Integer currentPage, Model model, HttpServletRequest request) {
        Comment comment = new Comment();
        Page<Comment> commentPage = new Page<Comment>(commentService.count(comment), 1, 20);
        commentPage = commentService.findAll(comment, commentPage);
        commentPage.setPath(WebUtil.getPath(request));

        model.addAttribute("commentPage", commentPage);
        return "/bg/comment-list";
    }

    /**
     * 删除单个评论
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping("/delete")
    public JSONObject delete(@RequestBody Map<String, Integer> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        Integer commentId = map.get("commentId");
        if (commentId != null && commentService.delete(commentId) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 批量删除评论
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteAll")
    public JSONObject deleteAll(@RequestBody Map<String, String> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        String commentIds = map.get("commentIds");
        if (commentIds != null) {
            String[] commentIdsStr = commentIds.split(",");
            List<Integer> commentIdList = new ArrayList<Integer>();
            for (String s : commentIdsStr) {
                if (StringUtil.isNumber(s)) {
                    commentIdList.add(Integer.parseInt(s));
                }
            }
            if (!commentIdList.isEmpty() && commentService.deleteByIds(commentIdList) > 0) {
                result = 1;
            }
        }
        jsonObject.put("result", result);
        return jsonObject;
    }
}
