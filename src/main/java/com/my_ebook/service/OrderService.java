package com.my_ebook.service;

import com.my_ebook.entity.Customer;
import com.my_ebook.entity.Order;
import com.my_ebook.entity.OrderItem;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.Date;
import java.util.List;

public interface OrderService extends BaseService<Order>, PageService<Order> {


    /**
     * 创建订单 并返回创建的订单
     *
     * @param customerID   客户编号
     * @param receiver     收货人
     * @param recevingAddr 收货地址
     * @param phone        收货人电话号码
     * @param remark       备注
     * @return
     */
    Order createOrder(Integer customerID, String receiver, String recevingAddr, String phone, String remark, List<OrderItem> orderItems);


    /**
     * 取消订单
     *
     * @param orderId
     * @return
     */
    int cancelOrder(Integer orderId);

    /**
     * 完成订单
     *
     * @param orderId
     * @return
     */
    int completeOrder(Integer orderId);

    /**
     * 确认订单
     *
     * @param orderId
     * @return
     */
    int confirmOrder(Integer orderId);

    /**
     * 签收订单
     *
     * @param orderId
     * @return
     */
    int receivingOrder(Integer orderId);

    /**
     * 支付订单
     *
     * @param orderId
     * @return
     */
    int payOrder(Integer orderId);

    /**
     * 通过订单编号查找订单
     *
     * @param orderId
     * @return
     */
    Order findByOrderId(Integer orderId);

    /**
     * 查询顾客订单信息
     *
     * @param customerId  订单Id
     * @param orderNo     订单编号
     * @param orderStatus 订单状态
     * @param delivery    订单派送方式
     * @param postStatus  发货状态
     * @param payStatus   支付状态
     * @param startDate   订单开始时间
     * @param endDate     订单创建结束时间
     * @param currentPage 当前页面
     * @param page
     * @return
     */
    Page<Order> findOrders(Integer customerId, String orderNo, Integer orderStatus, Integer delivery, Integer postStatus, Integer payStatus, String startDate, String endDate,Integer currentPage, Page page);

    /**
     * 通过订单编号查找订单信息
     *
     * @param orderNo
     * @param page
     * @return
     */
    Page<Order> findByOrderNo(String orderNo, Page page);

    /**
     * 查询顾客所有订单信息
     *
     * @param customerId
     * @param page
     * @return
     */
    Page<Order> findCustomerOrders(Integer customerId, Page page);

    List<Order> selectBycustomerid(int customerId);

    int deleteByorderId(String id);
}
