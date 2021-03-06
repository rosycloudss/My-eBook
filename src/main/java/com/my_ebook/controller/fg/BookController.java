package com.my_ebook.controller.fg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Book;
import com.my_ebook.entity.Category;
import com.my_ebook.entity.Comment;
import com.my_ebook.entity.Customer;
import com.my_ebook.service.BookService;
import com.my_ebook.service.CategoryService;
import com.my_ebook.service.CommentService;
import com.my_ebook.util.StringUtil;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import com.mysql.cj.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RequestMapping("/fg/book")
@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CommentService commentService;

    /**
     * 获取所有图书
     * @return
     */
    @RequestMapping(value = "/bookList", method = RequestMethod.GET)
    public String displayBookList(@RequestParam(value = "categoryId", required = false) Integer categoryId,
                                  @RequestParam(value = "currentPage", required = false) Integer currentPage,
                                  HttpSession session, Model model, HttpServletRequest request) {
        Book book = new Book();
        if (categoryId != null && categoryId != 0) {
            Category category = new Category();
            category.setId(categoryId);
            book.setCategory(category);
        } else {
            categoryId = 0;
        }
        currentPage = (currentPage == null ? 1 : currentPage);
        Page<Book> page = new Page<Book>(bookService.count(book), currentPage, 12);
        page.setPath(WebUtil.getPath(request));
        page = bookService.findAll(book, page);
        model.addAttribute("books", page);
        if (session.getAttribute("categoryList") == null) {
            //获取图书分类信息
            Page<Category> categoryPage = categoryService.findAllParentCategory();
            List<Category> categoryList = new ArrayList<Category>();
            List<Category> parentCategoryList = new ArrayList<Category>();
            for (Category category : categoryPage.getPageInfos()) {
                if (category.getParentId()!=null && category.getParentId() == 0) {
                    parentCategoryList.add(category);
                }
                categoryList.addAll(category.getSubCategory());
            }
            session.setAttribute("parentCategoryList", parentCategoryList);
            session.setAttribute("categoryList", categoryList);
        }
        model.addAttribute("strategy", 0);
        session.setAttribute("categoryId", categoryId);
        return "/fg/index";
    }

    /**
     * 通过书名查找图书
     * @param bookName
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping(value = "/findBook", method = RequestMethod.POST)
    public String findBook(@RequestParam("bookName") String bookName,@RequestParam("currentPage") Integer currentPage, Model model, HttpServletRequest request) {
        Book book = new Book();

        if (!StringUtil.isEmpty(bookName)) {
            book.setName(bookName);
        }

        currentPage = (currentPage == null ? 1 : currentPage);
        Page<Book> page = new Page<Book>(bookService.count(book), currentPage, 12);
        page.setPath(WebUtil.getPath(request));
        page = bookService.findAll(book, page);
        model.addAttribute("strategy", 1);
        request.getSession().setAttribute("bookName", bookName);
        model.addAttribute("books", page);

        return "/fg/index";
    }


    /**
     * 获取所有子分类
     * @return
     */
    @ResponseBody
    @RequestMapping("/getCategoryList")
    public JSONObject findCategoryByParentId(@RequestParam("parentId") int parentId) {
        JSONObject jsonObject = new JSONObject();
        Page<Category> categoryPage = categoryService.findByParentId(parentId);
        jsonObject.put("categoryPage", categoryPage);
        return jsonObject;
    }

    /**
     * 获取图书详细信息
     * @param model
     * @param bookId
     * @return
     */
    @RequestMapping(value = "/bookDetails", method = RequestMethod.GET)
    public String lookBookDetails(Model model, @RequestParam("bookId") int bookId) {
        Book book = bookService.findById(bookId);
        model.addAttribute("book", book);

        Page<Comment> page = new Page<Comment>();
        page.setPageSize(3);
        Comment comment = new Comment();
        comment.setBook(book);
        page.setTotalRecord(commentService.count(comment));
        page.setPageCurrent(1);
        Page<Comment> comments = commentService.findBookComments(bookId, page);
        model.addAttribute("comments", comments);

        Page<Book> pageBook = new Page<Book>();
        page.setPageSize(4);
        page.setPageCurrent(1);
        Page<Book> recommandBook = bookService.findByCategory(book.getCategory().getId(), pageBook);
        model.addAttribute("recommandBook", recommandBook);
        return "/fg/bookdetail";
    }

    /**
     * 添加图书评论
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/addComment", method = RequestMethod.POST)
    public JSONObject addComment(@RequestBody Map map, HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        Comment bookComment = new Comment();
        bookComment.setContent((String) map.get("comment"));
        Customer customer = (Customer) session.getAttribute("customer");
        bookComment.setCustomer(customer);
        Book book = new Book();
        book.setID((Integer) map.get("bookId"));
        bookComment.setBook(book);
        if (commentService.add(bookComment)!=0) {
            jsonObject.put("result", 1);
        } else {
            jsonObject.put("result", 0);
        }
        return jsonObject;
    }

}
