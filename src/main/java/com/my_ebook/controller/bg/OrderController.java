package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.my_ebook.entity.Order;
import com.my_ebook.service.OrderService;
import com.my_ebook.util.StringUtil;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import com.sun.org.apache.xpath.internal.operations.Or;
import jdk.nashorn.internal.scripts.JO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller("bgOrderController")
@RequestMapping("/bg/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 查询订单列表
     *
     * @param startDate
     * @param endDate
     * @param payStatus
     * @param orderStauts
     * @param orderNo
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(String startDate, String endDate, Integer payStatus, Integer orderStauts, String orderNo, Integer currentPage, Model model, HttpServletRequest request) {
        //防止startDate 和 endDate 为空字符
        if (StringUtil.isNullOrEmpty(startDate)) {
            startDate = null;
        }
        if (StringUtil.isNullOrEmpty(endDate)) {
            endDate = null;
        }
        if (StringUtil.isNullOrEmpty(orderNo)) {
            orderNo = null;
        }
        System.out.println(startDate + "==" + endDate + "==" + payStatus + "==" + orderStauts + "==" + orderNo + "==" + currentPage);
        currentPage = (currentPage == null ? 1 : currentPage);
        System.out.println("startDAte=" + startDate);
        System.out.println("endDate=" + endDate);
        System.out.println("payStatus=" + payStatus);
        System.out.println("orderStauts=" + orderStauts);
        System.out.println("orderNo=" + orderNo);
        System.out.println("currentPage=" + currentPage);


        Page<Order> orderPage = orderService.findOrders(null, orderNo, orderStauts, null, null, payStatus, startDate, endDate, currentPage, null);
        orderPage.setPath(WebUtil.getPath(request));
        System.out.println(orderPage);
        model.addAttribute("orderPage", orderPage);
        return "/bg/order-list";
    }

    /**
     * 根据订单id 获取单个订单信息
     *
     * @param op
     * @param orderId
     * @param model
     * @return
     */
    @RequestMapping("/getOne")
    public String getOne(Integer op, Integer orderId, Model model) {
        orderService.findByOrderId(orderId);
        Order order = orderService.findByOrderId(orderId);
        model.addAttribute("order", order);
        return "/bg/order-view";
    }


    @ResponseBody
    @RequestMapping("/edit")
    public JSONObject edit(@RequestBody Order order) {
        System.out.println(order);
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        if (order != null && orderService.update(order) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }


    /**
     * 删除订单信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public JSONObject delete(@RequestBody Map<String, Integer> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        Integer orderId = map.get("orderId");
        if (orderId != null && orderService.delete(orderId) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 删除多个订单信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/deleteAll", method = RequestMethod.POST)
    public JSONObject deleteAll(@RequestBody Map<String, String> map) {
        String orderIds = map.get("orderIds");
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(orderIds);
        if (orderIds != null) {
            String[] orderIdArray = orderIds.split(",");
            List<Integer> orderIdList = new ArrayList<Integer>();
            for (String orderIdStr : orderIdArray) {
                orderIdList.add(Integer.parseInt(orderIdStr));
            }
            System.out.println(orderIdList);
            if (orderService.delete(orderIdList) > 0) {
                result = 1;
            }
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

}
