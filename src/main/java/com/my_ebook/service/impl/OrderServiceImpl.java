package com.my_ebook.service.impl;

import com.my_ebook.entity.Customer;
import com.my_ebook.entity.Order;
import com.my_ebook.entity.OrderItem;
import com.my_ebook.mapper.OrderMapper;
import com.my_ebook.service.OrderService;
import com.my_ebook.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderMapper orderMapper;

    /**
     * 生成订单编号
     * @param customerID
     * @return
     */
    public String createOrderNo(Integer customerID) {
        String orderNo = customerID + "" + System.currentTimeMillis();
        return orderNo;
    }

    /**
     * 创建订单
     * @param customerID   客户编号
     * @param receiver     收货人
     * @param recevingAddr 收货地址
     * @param phone        收货人电话号码
     * @param remark       备注
     * @return
     */
    public Order createOrder(Integer customerID, String receiver, String recevingAddr, String phone, String remark, List<OrderItem> orderItems) {
        Order order = new Order();

        Customer customer = new Customer();
        customer.setID(customerID);
        order.setCustomer(customer);

        //设订编
        order.setOrderID(createOrderNo(customerID));

        order.setReceiver(receiver);
        order.setRecevingAddr(recevingAddr);
        order.setPhone(phone);
        order.setRemark(remark);

        order.setOrderItemList(orderItems);
        if(add(order) > 0){
            return order;
        }
        return null;
    }

    public int cancelOrder(Integer orderId) {
        return 0;
    }

    public int completeOrder(Integer orderId) {
        return 0;
    }

    public int confirmOrder(Integer orderId) {
        return 0;
    }

    public int receivingOrder(Integer orderId) {
        return 0;
    }

    public int payOrder(Integer orderId) {
        return 0;
    }

    public Order findByOrderId(Integer orderId) {
        return null;
    }

    public Page<Order> findOrders(Integer customerId, String orderNo, Integer orderStatus, Integer delivery, Integer postStatus, Integer payStatus, Date startDate, Date endDate, Page page) {
        return null;
    }

    public Page<Order> findByOrderNo(String orderNo, Page page) {
        return null;
    }

    public Page<Order> findCustomerOrders(Integer customerId, Page page) {
        return null;
    }

    public int add(Order order) {
        return 0;
    }

    public int delete(int id) {
        return 0;
    }

    public int update(Order order) {
        return 0;
    }

    public int count(Order order) {
        return 0;
    }

    public Page<Order> findAll(Order order, Page page) {
        return null;
    }

    public Page<Order> initPage(Order order, Page<Order> page) {
        return null;
    }
}
