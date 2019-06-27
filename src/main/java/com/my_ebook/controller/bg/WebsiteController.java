package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Website;
import com.my_ebook.service.WebsiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

//@Controller("bgWebsiteController")
@RequestMapping("/bg/website")
public class WebsiteController {


    @Autowired
    private WebsiteService websiteService;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/getWebsite")
    public String getWebSite(Model model) {
        Website website = websiteService.find();
        model.addAttribute("website", website);

        servletContext.setAttribute("website", website);
        return "/bg/website-info";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(Website website) {
        System.out.println(website);
        websiteService.update(website);
        return "redirect:/bg/website/getWebsite";
    }

}
