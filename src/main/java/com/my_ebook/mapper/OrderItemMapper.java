package com.my_ebook.mapper;

import com.my_ebook.entity.Order;
import com.my_ebook.entity.OrderItem;
import com.my_ebook.vo.Page;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderItemMapper {

    int insert(OrderItem orderItem);

//    int insertAll()

    int deleteById(@Param("orderItemId") int orderItemId);

    int deleteByOrderId(@Param("orderId") int orderId);

    int update(@Param("orderItem") OrderItem orderItem);

    List<OrderItem> selectByOrderId(@Param("orderId") int orderId);

    OrderItem selectById(@Param("orderItemId") int orderItemId);



}
