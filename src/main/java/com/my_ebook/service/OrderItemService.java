package com.my_ebook.service;

import com.my_ebook.entity.OrderItem;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;
import java.util.Map;

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
     * 通过多个图书ID创建 OrderItem
     * @param bookIds 图书 id 列表
     * @param OrderItemMountMap 存放图书ID 和 数量的对应关系
     * @return
     */
    List<OrderItem> createOrderItems(List<Integer> bookIds, Map<Integer, Integer> OrderItemMountMap);

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
