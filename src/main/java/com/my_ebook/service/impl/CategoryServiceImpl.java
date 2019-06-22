package com.my_ebook.service.impl;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Category;
import com.my_ebook.mapper.CategoryMapper;
import com.my_ebook.service.CategoryService;
import com.my_ebook.service.PageService;
import com.my_ebook.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @ClassName:CategoryServiceImpl
 * @Author:liwei
 * @Description: TODO CategoryService 的实现类
 * @Date:2019/6/22 0:06
 * @Version: V1.0
 */
@Service
public class CategoryServiceImpl implements CategoryService, PageService<Category> {

    @Resource
    CategoryMapper categoryMapper;

    public int add(Category category) {
        return categoryMapper.insert(category);
    }

    public int delete(int categoryId) {
        return categoryMapper.delete(categoryId);
    }

    public int deleteByParentId(int parentId) {
        return categoryMapper.deleteByParentId(parentId);
    }

    public int update(Category category) {
        return categoryMapper.update(category);
    }

    public Page<Category> findByParentId(int parentId) {
        return null;
    }

    public Page<Category> findAllParentCategory() {
        return null;
    }

    public Category findById(int categoryId) {
        return null;
    }


    public Page<Category> initPage(Category category, Page<Category> page) {
        if (page == null) {
            page = new Page<Category>();
            page.setPageStart(1);
            page.setTotalRecord(0);
            page.setPageSize(20);
        }
        return page;
    }
}
