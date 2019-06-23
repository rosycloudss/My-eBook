package com.my_ebook.service.impl;

import com.my_ebook.entity.OrderItem;
import com.my_ebook.mapper.OrderItemMapper;
import com.my_ebook.service.OrderItemService;
import com.my_ebook.vo.Page;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderItemSerivceImpl implements OrderItemService {

    @Resource
    private OrderItemMapper orderItemMapper;

    public int add(List<OrderItem> orderItemList) {
        int result = 0;
        if (orderItemList != null && !orderItemList.isEmpty()) {
            for (OrderItem orderItem : orderItemList) {
                result += add(orderItem);
            }
        }
        return result;
    }

    public int deleteByOrderId(int orderId) {
        return orderItemMapper.deleteByOrderId(orderId);
    }

    public List<OrderItem> findOrderItems(Integer orderId) {
        return orderItemMapper.selectByOrderId(orderId);
    }

    public int add(OrderItem orderItem) {
        return orderItemMapper.insert(orderItem);
    }

    public int delete(int id) {
        return orderItemMapper.deleteById(id);
    }

    public int update(OrderItem orderItem) {
        return orderItemMapper.update(orderItem);
    }

    /**
     * 方法未实现
     *
     * @param orderItem
     * @return
     */
    public int count(OrderItem orderItem) {
        return 0;
    }

    /**
     * 方法未实现
     *
     * @param orderItem
     * @param page
     * @return
     */
    public Page<OrderItem> findAll(OrderItem orderItem, Page page) {
        return null;
    }
}
