package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Book;
import com.my_ebook.entity.Category;
import com.my_ebook.service.BookService;
import com.my_ebook.service.CategoryService;
import com.my_ebook.util.StringUtil;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller("bgBookController")
@RequestMapping("/bg/book")
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private CategoryService categoryService;

    /**
     * 添加图书信息
     *
     * @param book
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public JSONObject add(@RequestBody Book book) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        if (book != null && bookService.add(book) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        //添加图书图片
        return jsonObject;
    }

    /**
     * 删除图书信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping("/delete")
    public JSONObject delete(@RequestBody Map<String, Integer> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        Integer bookId = map.get("bookId");
        if (bookId != null && bookService.delete(bookId) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 删除多个图书信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/deleteAll", method = RequestMethod.POST)
    public JSONObject deleteAll(@RequestBody Map<String, String> map) {
        String bookIds = map.get("bookIds");
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(bookIds);
        if (bookIds != null) {
            String[] bookIdArray = bookIds.split(",");
            List<Integer> bookIdList = new ArrayList<Integer>();
            for (String bookIdStr : bookIdArray) {
                bookIdList.add(Integer.parseInt(bookIdStr));
            }
            System.out.println(bookIdList);
            if (bookService.delete(bookIdList) > 0) {
                result = 1;
            }
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 查询图书列表
     *
     * @param name
     * @param categoryId
     * @param publisher
     * @param currentPage
     * @param model
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/list")
    public String bookList(String name, Integer categoryId, String publisher, Integer currentPage, Model model, HttpServletRequest request, HttpSession session) {
        Book book = new Book();
        if (!StringUtil.isEmpty(name)) {
            book.setName(name);
        }
        if (!StringUtil.isEmpty(publisher)) {
            book.setPublisher(publisher);
        }
        if (categoryId != null && categoryId != 0) {
            Category category = new Category();
            category.setId(categoryId);
            book.setCategory(category);
        }
        System.out.println(name + "===" + categoryId + "===" + publisher + "====");

        currentPage = (currentPage == null ? 1 : currentPage);
        Page<Book> page = new Page<Book>(bookService.count(book), currentPage, 20);
        page.setPath(WebUtil.getPath(request));
        page = bookService.findAll(book, page);
        model.addAttribute("bookPage", page);
        //以后提出到拦截器中
        if (session.getAttribute("categoryList") == null) {
            //获取图书分类信息
            Page<Category> categoryPage = categoryService.findAllParentCategory();
            List<Category> categoryList = new ArrayList<Category>();
            for (Category category : categoryPage.getPageInfos()) {
                categoryList.addAll(category.getSubCategory());
            }

            session.setAttribute("categoryList", categoryList);
        }
        return "/bg/book-list";
    }

    /**
     * 获取单本图书
     *
     * @param bookId
     * @param op
     * @param model
     * @return
     */
    @RequestMapping("/getOne")
    public String getOne(Integer bookId, Integer op, Model model) {
        if (bookId != null) {
            Book book = bookService.findById(bookId);
            model.addAttribute("book", book);
        }
        switch (op) {
            case 1: {
                return "/bg/book-reserve-edit";//跳转到图书库存修改界面
            }
            default: {
                return "/bg/book-edit";//跳转到图书修改界面
            }
        }
    }

    @ResponseBody
    @RequestMapping("/edit")
    public JSONObject edit(@RequestBody Book book) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(book);
        if (book != null && bookService.update(book) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

}
