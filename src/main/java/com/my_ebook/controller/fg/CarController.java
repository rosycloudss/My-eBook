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
import java.util.List;

@RequestMapping("/fg/car")
@Controller
public class CarController {

    @Autowired
    private CarService carService;

    /**
     * 加入购物车
     */
    @ResponseBody
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public JSONObject addBook(Model model, @RequestParam("bookId") int bookId, HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        Customer customer = (Customer) session.getAttribute("customer");
        Car car = new Car();
        car.setCustomer(customer);
        car.setOrderMount(1);
        Book book = new Book();
        book.setID(bookId);
        car.setBook(book);
        if (carService.add(car) == 1) {
            jsonObject.put("result", 1);
        } else {
            jsonObject.put("result", 0);
        }
        return jsonObject;
    }

    /**
     * 清空购物车
     */
    @ResponseBody
    @RequestMapping(value = "/clear", method = RequestMethod.GET)
    public JSONObject clear(HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        Customer customer = (Customer) session.getAttribute("customer");
        if (carService.deleteByCustomerId(customer.getID()) == 1) {
            jsonObject.put("result", "1");
        } else {
            jsonObject.put("result", "0");
        }
        return jsonObject;
    }

    /**
     * 查看购物车
     */
    @RequestMapping(value = "/displayCar", method = RequestMethod.GET)
    public String displayCar(Model model, HttpSession session) {
        Customer customer = (Customer) session.getAttribute("customer");
        List<Car> carList = carService.findCustomerCars(customer.getID());
        model.addAttribute("carList", carList);
        session.setAttribute("", "");
        return "/fg/head";
    }

    /**
     * 更新购物车中书籍数量
     * @param bookId
     * @param sign
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "updateCar", method = RequestMethod.GET)
    public JSONObject updateCar(Integer bookId, Integer sign, HttpSession session, Model model) {
        JSONObject jsonObject = new JSONObject();
        if(bookId == null || sign == null) {
            jsonObject.put("result", 0);
        } else {
            Customer customer = (Customer) session.getAttribute("customer");
            carService.updateCar(customer.getID(), bookId, sign);
            jsonObject.put("result", 1);
        }
        return jsonObject;
    }


}
