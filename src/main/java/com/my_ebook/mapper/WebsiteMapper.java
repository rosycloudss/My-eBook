package com.my_ebook.mapper;

import com.my_ebook.entity.Website;

import java.util.List;

public interface WebsiteMapper {

    int insert(Website website);

    int update(Website website);

    List<Website> select();

}
