package com.my_ebook.controller.bg;

import com.my_ebook.entity.Order;
import com.my_ebook.service.OrderService;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller("bgOrderController")
@RequestMapping("/bg/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/list")
    public String list(Date startDate, Date endDate, Integer payStatus, Integer orderStauts, String orderNo, Integer currentPage, Model model, HttpServletRequest request) {
        currentPage = (currentPage == null ? 0 : currentPage);
        System.out.println("startDAte=" + startDate);
        System.out.println("endDate=" + endDate);
        Page<Order> orderPage = orderService.findOrders(null, orderNo, orderStauts, null, null, payStatus, startDate, endDate, currentPage, null);
        orderPage.setPath(WebUtil.getPath(request));
        System.out.println(orderPage);
        model.addAttribute("orderPage", orderPage);
        return "/bg/order-list";
    }
}
