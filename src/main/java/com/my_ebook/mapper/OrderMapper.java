package com.my_ebook.mapper;

import com.my_ebook.entity.Order;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface OrderMapper {

    int insert(Order order);

    int deleteById(int id);

    int deleteByCustomerId(int customerId);

    int count(@Param("order") Order order);

    int countIntStartAndEnd(@Param("order") Order order, @Param("start") String start, @Param("end") String end);

    int update(@Param("order") Order order);

    List<Order> select(@Param("order") Order order, @Param("page") Page page);

    List<Order> selectInStartAndEnd(@Param("order") Order order, @Param("start") String start, @Param("end") String end, @Param("page") Page page);

    List<Order> selectBycustomerid(int customerId);
}





