package com.my_ebook.service;

import com.my_ebook.entity.OrderItem;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;

/**
 * @ClassName:OrderItemService
 * @Author:liwei
 * @Description: TODO 订单Item的服务接口
 * @Date:2019/6/22 23:28
 * @Version: V1.0
 */
public interface OrderItemService extends BaseService<OrderItem> {


    /**
     * 批量添加订单项
     *
     * @param orderItemList
     * @return
     */
    int add(List<OrderItem> orderItemList);

    /**
     * 通过订单ID删除订单中的商品项
     *
     * @param orderId
     * @return
     */
    int deleteByOrderId(int orderId);

    /**
     * 查询订单中的商品项
     *
     * @param orderId 订单ID
     * @return
     */
    List<OrderItem> findOrderItems(Integer orderId);


}
