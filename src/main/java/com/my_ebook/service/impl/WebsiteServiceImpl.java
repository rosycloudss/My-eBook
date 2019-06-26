package com.my_ebook.service.impl;

import com.my_ebook.entity.Website;
import com.my_ebook.mapper.WebsiteMapper;
import com.my_ebook.service.WebsiteService;
import com.my_ebook.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class WebsiteServiceImpl implements WebsiteService {

    @Resource
    private WebsiteMapper websiteMapper;

    @Override
    public Website find() {
        List<Website> websites = websiteMapper.select();
        return websites.get(0);
    }

    @Override
    public int add(Website website) {
        return 0;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Website website) {
        return websiteMapper.update(website);
    }

    @Override
    public int count(Website website) {
        return 0;
    }

    @Override
    public Page<Website> findAll(Website website, Page page) {
        return null;
    }
}
