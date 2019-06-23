package com.my_ebook.mapper;

import com.my_ebook.entity.Category;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface CategoryMapper {

    int insert(@Param("category") Category category);

    int delete(@Param("categoryId") int categoryId);

    int deleteByParentId(@Param("parentId") int parentId);

    int update(@Param("category") Category category);

    List<Category> selectByParentId(@Param("parentId") int parentId);

    List<Category> selectByParentIdLimit(@Param("parentId") int parentId,@Param("page") Page page);

    Category selectById(@Param("categoryId") int categoryId);
}
