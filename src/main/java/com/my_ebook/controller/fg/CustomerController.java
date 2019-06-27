package com.my_ebook.controller.fg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.*;
import com.my_ebook.service.BookService;
import com.my_ebook.service.CustomerService;
import com.my_ebook.service.OrderItemService;
import com.my_ebook.service.OrderService;
import com.my_ebook.util.DateUtil;
import com.my_ebook.util.MD5Utils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/fg/customer")
@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderItemService orderItemService;
    @Autowired
    private BookService bookService;
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(Model model, @RequestParam("name") String name, @RequestParam("nickname") String nickname,
                           @RequestParam("phone") String phone, @RequestParam("password") String password) {
        if (phone !=null && password != null) {
            if (customerService.findByPhone(phone) != null) {
                model.addAttribute("msg", "该号码已经被注册！");
                System.out.println("注册过");
                return "/fg/register";
            }
            Customer customer = new Customer();
            customer.setPhone(phone);
            customer.setName(name);
            customer.setNickname(nickname);
            customer.setPassword(MD5Utils.getSaltMD5(password));
            customer.setCreateTime(DateUtil.getCurrentDate());
            customer.setCreateTime(DateUtil.getCurrentDate());
            customerService.add(customer);
            model.addAttribute("msg", "注册成功，请登录");

            return "/fg/login";
        }
        model.addAttribute("msg", "账号密码不能为空");
        return "/fg/register";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Model model, HttpSession session, @RequestParam("phone") String phone,
                        @RequestParam("password") String password) {
        Customer customer = customerService.login(phone, password);
        if (customer != null) {
            session.setAttribute("customer", customer);
            return "redirect:/fg/book/bookList";
        }
        model.addAttribute("msg", "账号或密码错误！");
        return "/fg/login";
    }

    @RequestMapping(value = "logout")
    public String logout(HttpSession session, Model model) {
        session.removeAttribute("customer");
        model.addAttribute("msg", "退出登录成功！");
        return "/fg/login";
    }

    /**
     * 更改密码
     * @param oldPassword
     * @param newPassword
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/changePassword/{oldPassword}/{newPassword}", method = RequestMethod.GET)
    public JSONObject changePassword(@PathVariable String oldPassword, String newPassword, HttpSession session) {
        Customer customer= (Customer)session.getAttribute("customer");
        JSONObject jsonObject=new JSONObject();
        int result = 0;
        if (customerService.updatePassword(customer.getID(), oldPassword, newPassword) == 0 ) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value="/findCustomerById",method = RequestMethod.GET)
    public JSONObject findCustomerById(HttpSession session){
        JSONObject jsonObject=new JSONObject();
        Customer customer= (Customer)session.getAttribute("customer");
        if(customer != null){
            Customer customer1=customerService.findById(customer.getID());
            jsonObject.put("customer",customer1);
        }
        return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/getPersonalOrder",method = RequestMethod.GET)
    public JSONObject getPersonalOrder(HttpSession session){

        JSONObject jsonObject=new JSONObject();
        Customer customer= (Customer)session.getAttribute("customer");
        int customerId=customer.getID();
        List<Order> orderList=orderService.selectBycustomerid(customerId);
        jsonObject.put("orderList",orderList);
        return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/getOrderDetail/{orderId}",method = RequestMethod.GET)
    public JSONObject getOrderDetail(@PathVariable String orderId){
        JSONObject jsonObject=new JSONObject();
        List<OrderItem> orderItemList = orderItemService.findOrderItems(orderId);
        List<Orderdetail> orderdetails=new ArrayList<Orderdetail>();
        for (int j = 0; j < orderItemList.size(); j++) {
            Orderdetail orderdetail=new Orderdetail();
            OrderItem orderItem = orderItemList.get(j);
            int bookId = orderItem.getBook().getID();
            Book book = bookService.findById(bookId);
            orderdetail.setSinglePrice(book.getPrice());
            orderdetail.setBookname(book.getName());
            orderdetail.setMount(orderItem.getOrderMount());
            orderdetail.setTotalPrice(orderItem.getTotalPrice());
            orderdetails.add(orderdetail);
        }
        jsonObject.put("orderdetails",orderdetails);
        return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public JSONObject update(@RequestBody Customer customer,HttpSession session){

        Customer customer1= (Customer)session.getAttribute("customer");
        customer.setID(customer1.getID());
        JSONObject jsonObject=new JSONObject();
        int result=0;
        result=customerService.update(customer);
        jsonObject.put("result",result);
        return jsonObject;
    }
    @ResponseBody
    @RequestMapping(value = "/delOrder/{orderId}",method = RequestMethod.GET)
    public JSONObject delOrder(@PathVariable String orderId){
        System.out.println(orderId);
        JSONObject jsonObject=new JSONObject();
        int result=0;
        result=orderService.deleteByorderId(orderId);
        jsonObject.put("result",result);
        return jsonObject;
    }

}