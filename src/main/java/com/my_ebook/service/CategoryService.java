package com.my_ebook.service;

import com.my_ebook.entity.Category;
import com.my_ebook.vo.Page;

public interface CategoryService {

    int add(Category category);

    int delete(int categoryId);

    int deleteByParentId(int parentId);

    int update(Category category);

    Page<Category> findByParentId(int parentId);

    Page<Category> findAllParentCategory();

    Category findById(int categoryId);

//    List<Category> selectByParentId(@Param("parentId") int parentId);
//
//    Category selectById(int categoryId);

}
