package com.my_ebook.service.base;

import com.my_ebook.vo.Page;

public interface BaseService<T> {

    int add(T t);

    int delete(int id);

    int update(T t);

    int count(T t);

    Page<T> findAll(T t,Page page);


}
