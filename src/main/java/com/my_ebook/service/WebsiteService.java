package com.my_ebook.service;

import com.my_ebook.entity.Website;
import com.my_ebook.service.base.BaseService;

public interface WebsiteService extends BaseService<Website> {

    Website find();
}
