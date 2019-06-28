package com.my_ebook.controller.fg;


import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;
import com.my_ebook.entity.*;
import com.my_ebook.service.BookService;
import com.my_ebook.service.CarService;
import com.my_ebook.service.OrderItemService;
import com.my_ebook.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RequestMapping("/fg/car")
@Controller
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private BookService bookService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderItemService orderItemService;

    /**
     * 加入购物车
     */
    @ResponseBody
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public JSONObject addBook( @RequestParam("bookId") int bookId, HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
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
        } else {
            jsonObject.put("result", 2);
        }
        return jsonObject;
    }

    /**
     * 清空购物车
     */
    @RequestMapping(value = "/clear", method = RequestMethod.GET)
    public String clear(Model model, HttpSession session) {

        Customer customer = (Customer) session.getAttribute("customer");
        if (carService.deleteByCustomerId(customer.getID()) == 1) {
            model.addAttribute("msg", "删除成功");
        } else {
            model.addAttribute("msg", "删除失败");
        }
        return "redirect:/fg/book/bookList";
    }

    /**
     * 查看购物车
     */
    @ResponseBody
    @RequestMapping(value = "/displayCar", method = RequestMethod.GET)
    public JSONObject displayCar(HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        Customer customer = (Customer) session.getAttribute("customer");
        List<Car> carList = carService.findCustomerCars(customer.getID());
        jsonObject.put("carList", carList);
        return jsonObject;
    }

    /**
     * 更新购物车中书籍数量
     * @param bookId
     * @param sign
     * @param session
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/updateCar", method = RequestMethod.GET)
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

    /**
     * 结算
     * @param isCar
     * @param bookId
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/checkOut", method = RequestMethod.GET)
    public String checkOut(@RequestParam("isCar")Integer isCar,
                           @RequestParam(value = "bookId", required = false) Integer bookId,
                           HttpSession session, Model model) {
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
            List<Car> carList = new ArrayList<Car>();
            if (isCar == 1) {
                carList = carService.findCustomerCars(customer.getID());
            } else {
                Car car = new Car();
                car.setCustomer(customer);
                car.setOrderMount(1);
                Book book = bookService.findById(bookId);
                car.setBook(book);
                carList.add(car);
            }
            model.addAttribute("carList", carList);
            return "/fg/generateOrder";
        } else {
            return "redirect:/fg/book/bookList";
        }

    }

    /**
     * 生成订单
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    public JSONObject createOrder(@RequestBody Map map, HttpSession session) {
        JSONObject jsonObject = new JSONObject();
        String name = (String) map.get("name");
        String phone = (String) map.get("phone");
        String address = (String) map.get("address");
        String remark =(String) map.get("remark");

        List<String> carlist = (List<String>) map.get("carId");

        Customer customer = (Customer) session.getAttribute("customer");
        List<OrderItem> orderItems = new ArrayList<OrderItem>();
        for(String carId : carlist) {
            OrderItem orderItem = new OrderItem();

            Car car = carService.findByCarId(Integer.valueOf(carId));

            orderItem.setBook(car.getBook());
            orderItem.setTotalPrice(car.getTotalPrice());
            orderItem.setOrderMount(car.getOrderMount());
            orderItems.add(orderItem);
            carService.deleteByCarId(Integer.valueOf(carId));
        }
        Order order =orderService.createOrder(customer.getID(), name, address, phone, remark, orderItems );
        for(OrderItem orderItem: orderItems) {
            orderItem.setOrder(order);
        }
        orderItemService.add(orderItems);
        if(order != null) {
            jsonObject.put("order", order);
            jsonObject.put("result", 1);

        } else {
            jsonObject.put("result", 0);
        }
        return jsonObject;
    }
}
