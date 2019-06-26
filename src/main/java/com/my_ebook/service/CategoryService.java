package com.my_ebook.service;

import com.my_ebook.entity.Category;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

/**
 * @ClassName:CategoryService
 * @Author:liwei
 * @Description: TODO 图书分类信息的服务接口
 * @Date:2019/6/22 22:18
 * @Version: V1.0
 */
public interface CategoryService extends BaseService<Category> , PageService<Category> {

        int deleteByParentId(int parentId);

        Page<Category> findByParentId(int parentId);

        Page<Category> findAllParentCategory();


    Category findById(int categoryId);

//    List<Category> selectByParentId(@Param("parentId") int parentId);
//
//    Category selectById(int categoryId);

}
