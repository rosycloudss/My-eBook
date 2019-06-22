package com.my_ebook.service;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Category;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;

/**
 * @ClassName:BookService
 * @Author:liwei
 * @Description: TODO 图书服务的接口
 * @Date:2019/6/21 21:10
 * @Version: V1.0
 */
public interface BookService extends BaseService<Book>, PageService<Book> {


    /**
     * 批量删除图书信息
     *
     * @param bookIds
     * @return
     */
    int delete(List<Integer> bookIds);

    /**
     * 查询所有图书信息
     *
     * @return
     */
    Page<Book> findAll(Page<Book>  page);

    /**
     * 通过图书属性查询图书信息
     *
     * @param book
     * @param page
     * @return
     */
    Page<Book> findByParameter(Book book, Page<Book>  page);

    /**
     * 通过图书编号查询图书信息
     *
     * @param bookId
     * @return
     */
    Book findById(int bookId);

    /**
     * 通过图书名称查询图书信息
     *
     * @param bookName
     * @param page
     * @return
     */
    Page<Book> findByName(String bookName, Page<Book>  page);

    /**
     * 通过图书分类查询图书信息
     *
     * @param categoryId
     * @param page
     * @return
     */
    Page<Book> findByCategory(int categoryId, Page<Book>  page);
}
