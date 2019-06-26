package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Reply;
import com.my_ebook.service.ReplyService;
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

@Controller("bgReplyController")
@RequestMapping("/bg/reply")
public class ReplyController {

    @Autowired
    private ReplyService replyService;


    /**
     * 查询留言列表
     *
     * @param name
     * @param ip
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(String name, String ip, Integer currentPage, Model model, HttpServletRequest request) {
        Reply reply = new Reply();
        if (name != null) {
            reply.setcName(name);
        }
        if (ip != null) {
            reply.setIp(ip);
        }
        currentPage = (currentPage == null ? 1 : currentPage);
        Page<Reply> replyPage = new Page<Reply>(replyService.count(reply), currentPage, 20);
        replyPage = replyService.findAll(reply, replyPage);
        replyPage.setPath(WebUtil.getPath(request));
        System.out.println(replyPage);
        model.addAttribute("replyPage", replyPage);
        return "/bg/message-list";
    }

    /**
     * 查询单个留言信息
     *
     * @param replyId
     * @param model
     * @return
     */
    @RequestMapping("/getOne")
    public String getOne(Integer replyId, Model model) {
        if(replyId != null){
            model.addAttribute("reply",replyService.findById(replyId));
        }
        return "/bg/message-info";
    }

    /**
     * 删除单个留言
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping("/delete")
    public JSONObject delete(@RequestBody Map<String, Integer> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        Integer replyId = map.get("replyId");
        if (replyId != null && replyService.delete(replyId) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 批量删除留言
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteAll")
    public JSONObject deleteAll(@RequestBody Map<String, String> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        String replyIds = map.get("replyIds");
        if (replyIds != null) {
            String[] replyIdsStr = replyIds.split(",");
            List<Integer> replyIdList = new ArrayList<Integer>();
            for (String s : replyIdsStr) {
                if (StringUtil.isNumber(s)) {
                    replyIdList.add(Integer.parseInt(s));
                }
            }
            if (!replyIdList.isEmpty() && replyService.deleteByIds(replyIdList) > 0) {
                result = 1;
            }
        }
        jsonObject.put("result", result);
        return jsonObject;
    }
}
