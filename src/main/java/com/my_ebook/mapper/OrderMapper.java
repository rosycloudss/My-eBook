package com.my_ebook.mapper;

import com.my_ebook.entity.Order;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface OrderMapper {

    int insert(@Param("order") Order order);

    int deleteById(@Param("id") int id);

    int deleteByCustomerId(@Param("customerId") int customerId);

    int count(@Param("order") Order order);

    int countIntStartAndEnd(@Param("order") Order order, @Param("start") Date start, @Param("end") Date end);

    int update(@Param("order") Order order);

    List<Order> select(@Param("order") Order order, @Param("page") Page page);

    List<Order> selectInStartAndEnd(@Param("order") Order order, @Param("start") Date start, @Param("end") Date end, @Param("page") Page page);

}
