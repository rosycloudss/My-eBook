package com.my_ebook.test;

import com.my_ebook.entity.Category;
import com.my_ebook.mapper.CategoryMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;


@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class CategoryTest {

    @Resource
   CategoryMapper categoryMapper;

    @Test
    public void addTest(){
        Category category = new Category();

        category.setName("文学理论");
        category.setParentId(2);
        System.out.println(categoryMapper.insert(category));;
    }
}
