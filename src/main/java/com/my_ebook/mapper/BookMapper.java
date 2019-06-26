package com.my_ebook.mapper;

import com.my_ebook.entity.Book;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface BookMapper {

    int insert(Book book);

    int deleteById(int bookId);

    int deleteByIds(List<Integer> bookIds);

    int update(Book book);

    /**
     * 查询图书数量 如果book为null则查询所有图书的数量
     *
     * @param book
     * @return
     */
    int count(@Param("book") Book book);

    Book selectById(@Param("bookId") int bookId);

    /**
     * 通过图书属性查询图书信息
     *
     * @param book
     * @param page
     * @return
     */
    List<Book> select(@Param("book") Book book, @Param("page") Page page);

    /**
     * 无条件查询图书信息
     *
     * @param page
     * @return
     */
    List<Book> selectAll(@Param("page") Page page);

    /**
     * 通过 多个ID查询图书信息
     * @param bookIds
     * @return
     */
    List<Book> selectByIds(@Param("bookIds") List<Integer> bookIds);

    /**
     * 通过图书名称查询图书信息
     *
     * @param bookName
     * @param page
     * @return
     */
    List<Book> selectByName(@Param("bookName") String bookName, @Param("page") Page page);

    /**
     * 通过图书分类查询图书信息
     *
     * @param categoryId
     * @param page
     * @return
     */
    List<Book> selectByCategory(@Param("categoryId") int categoryId, @Param("page") Page page);

}