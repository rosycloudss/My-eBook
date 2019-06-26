package com.my_ebook.mapper;

import com.my_ebook.entity.Order;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

    int insert(@Param("order") Order order);

    int deleteById(@Param("id") int id);

    int deleteByCustomerId(@Param("customerId") int customerId);

    int count(@Param("order") Order order);

    int update(@Param("order") Order order);

    List<Order> select(@Param("order") Order order, @Param("page") Page page);

}
