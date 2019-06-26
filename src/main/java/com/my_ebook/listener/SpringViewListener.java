package com.my_ebook.listener;

import com.my_ebook.entity.Website;
import com.my_ebook.service.WebsiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;

@Component
public class SpringViewListener implements ServletContextAware {

    @Autowired
    private WebsiteService websiteService;

    @Override
    public void setServletContext(ServletContext servletContext) {
        Website website = websiteService.find();
        System.out.println(website);
        servletContext.setAttribute("website", website);
    }
}
