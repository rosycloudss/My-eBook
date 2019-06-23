package com.my_ebook.mapper;

import com.my_ebook.entity.Order;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

public interface OrderMapper {

    int insert(@Param("order") Order order);

    int deleteById(@Param("id") int id);

    int deleteByCustomerId(@Param("customerId") int customerId);

    int update(@Param("order") Order order);

    Page<Order> select(@Param("order") Order order, @Param("page") Page page);

}
