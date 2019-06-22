package com.my_ebook.test;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Category;
import com.my_ebook.service.BookService;
import com.my_ebook.vo.Page;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class BookTest {

    Book copy;

    @Autowired
    BookService bookService;
    @Before
    public void init() {
        copy = new Book();
        copy.setID(1);
        copy.setName("java核心技术 卷一");
        copy.setCover("");
        copy.setISBN("978711547426");
        copy.setPages(711);
        copy.setDescription("java核心技术 卷一");
        copy.setPrice(119);
        copy.setSellingPrice(119);
        copy.setDiscount(0);
        copy.setPublisher("机械工业出版社");
        copy.setPublishDate(new Date(2017,1,1));
        copy.setEdition(1);
        copy.setReserve(100);
        copy.setAuthor("凯 S.霍斯特曼");
        Category category = new Category();
        category.setId(2);
        copy.setCategory(category);

    }

    @Test
    public void addBookTest() {
        Book book = new Book();
        book.setID(copy.getID());
        book.setName(copy.getName());
        book.setCover(copy.getCover());
        book.setISBN(copy.getISBN());
        book.setPages(copy.getPages());
        book.setDescription(copy.getDescription());
        book.setPrice(copy.getPrice());
        book.setSellingPrice(copy.getSellingPrice());
        book.setDiscount(copy.getDiscount());
        book.setPublisher(copy.getPublisher());
        book.setPublishDate(copy.getPublishDate());
        book.setEdition(copy.getEdition());
        book.setReserve(copy.getReserve());
        book.setAuthor(copy.getAuthor());
        book.setCategory(copy.getCategory());
        System.out.println(book);
        System.out.println(bookService.add(book));

    }

    @Test
    public void findTest(){

        System.out.println(bookService.findAll(null));
        System.out.println(bookService.findByCategory(2,null));
        System.out.println(bookService.findByName("java核",null));
        System.out.println(bookService.findById(1));
    }

    @Test
    public void updateTest(){
        System.out.println(bookService.update(copy));
    }
}
