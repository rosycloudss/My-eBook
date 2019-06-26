package com.my_ebook.mapper;

import com.my_ebook.entity.Category;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface CategoryMapper {

    int insert(Category category);

    int delete(int categoryId);

    int deleteByParentId(int parentId);

    int update(Category category);

    List<Category> selectByParentId(int parentId);

    List<Category> selectByParentIdLimit(@Param("parentId") int parentId,@Param("page") Page page);

    Category selectById(@Param("categoryId") int categoryId);
}
