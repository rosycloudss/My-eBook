package com.my_ebook.service.base;

import com.my_ebook.entity.Book;
import com.my_ebook.vo.Page;

public interface PageService<T> {
    public Page<T> initPage(T t, Page<T> page);
}
