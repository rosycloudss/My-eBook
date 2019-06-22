package com.my_ebook.service.impl;

import com.my_ebook.entity.Book;
import com.my_ebook.mapper.BookMapper;
import com.my_ebook.service.BookService;
import com.my_ebook.service.PageService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @ClassName:BookServiceImpl
 * @Author:liwei
 * @Description: TODO BookService 的实现类
 * @Date:2019/6/21 21:20
 * @Version: V1.0
 */
@Service
public class BookServiceImpl implements BookService, PageService<Book> {

    @Resource
    private BookMapper bookMapper;

    public int add(Book book) {
        if (book != null) {
            return bookMapper.insert(book);
        }
        return 0;
    }

    public int delete(int bookId) {
        return bookMapper.deleteById(bookId);
    }

    public int delete(List<Integer> bookIds) {
        return bookMapper.deleteByIds(bookIds);
    }

    public int update(Book book) {
        return bookMapper.update(book);
    }


    public int count(Book book) {
        return bookMapper.count(book);
    }

    public Page<Book> findAll(Page<Book> page) {
        page = initPage(null, page);
        page.setPageInfos(bookMapper.selectAll(page));
        return page;
    }

    public Page<Book> findByParameter(Book book, Page<Book> page) {
        page = initPage(book, page);
        page.setPageInfos(bookMapper.select(book, page));
        return page;
    }

    public Book findById(int bookId) {
        return bookMapper.selectById(bookId);
    }

    public Page<Book> findByName(String bookName, Page<Book> page) {
        page = initPage(null, page);
        page.setPageInfos(bookMapper.selectByName(bookName, page));
        return page;
    }

    public Page<Book> findByCategory(int categoryId, Page<Book> page) {
        page = initPage(null, page);
        page.setPageInfos(bookMapper.selectByCategory(categoryId, page));
        return page;
    }

    /**
     * 初始化Page
     *
     * @param book
     * @param page
     * @return
     */
    public Page<Book> initPage(Book book, Page<Book> page) {
        if (page == null) {
            page = new Page<Book>();
            page.setPageStart(1);
            page.setTotalRecord(count(book));
            page.setPageSize(20);
        }
        return page;
    }

}
