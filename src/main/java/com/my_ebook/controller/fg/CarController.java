package com.my_ebook.controller.fg;


import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;
import com.my_ebook.entity.Book;
import com.my_ebook.entity.Car;
import com.my_ebook.entity.Customer;
import com.my_ebook.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@RequestMapping("/fg/car")
@Controller
public class CarController {

    @Autowired
    private CarService carService;

    /**
     * 加入购物车
     */
    @RequestMapping(value = "addBook", method = RequestMethod.GET)
    public Model addBook(Model model, int bookId, HttpSession session) {
        Customer customer = (Customer) session.getAttribute("customer");
        Car car = new Car();
        car.setCustomer(customer);
        car.setOrderMount(1);
        Book book = new Book();
        book.setID(bookId);
        car.setBook(book);
        carService.add(car);
        model.addAttribute("msg", "添加成功！");
        return model;
    }


}
