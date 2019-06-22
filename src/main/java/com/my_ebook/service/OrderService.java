package com.my_ebook.service;

import com.my_ebook.entity.Order;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.Date;

public interface OrderService extends BaseService<Order>, PageService<Order> {



    /**
     * 查询顾客订单信息
     *
     * @param customerId  顾客ID
     * @param orderNo     订单编号
     * @param orderStatus 订单装填
     * @param delivery    订单派送状态
     * @param postStatus  订单发货状态
     * @param payStatus   订单支付状态
     * @param page
     * @return
     */
    Page<Order> findOrders(Integer customerId, String orderNo, Integer orderStatus, Integer delivery, Integer postStatus, Integer payStatus, Date startDate, Date endDate, Page page);

    /**
     * 通过订单编号查找订单信息
     *
     * @param orderInfo
     * @param page
     * @return
     */
    Page<Order> findByOrderNo(String orderInfo, Page page);

    /**
     * 查询顾客所有订单信息
     * @param customerId
     * @param page
     * @return
     */
    Page<Order> findCustomerOrders(Integer customerId,Page page);


}
