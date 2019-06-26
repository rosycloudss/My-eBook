package com.my_ebook.controller.bg;

import com.my_ebook.entity.Comment;
import com.my_ebook.entity.Website;
import com.my_ebook.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("bgWelcomeController")
@RequestMapping("/bg")
public class WelcomeController {

    @Autowired
    private BookService bookService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ReplyService replyService;

    @Autowired
    private WebsiteService websiteService;

    @RequestMapping("/welcome")
    public String welcome(Model model){
        model.addAttribute("bookCount",bookService.count(null));

        model.addAttribute("customerCount",bookService.count(null));

        model.addAttribute("commentCount",commentService.count(null));

        model.addAttribute("replyCount",replyService.count(null));

       model.addAttribute("website",websiteService.find());

        return "/bg/welcome";

    }
}
