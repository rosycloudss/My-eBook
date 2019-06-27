package com.my_ebook.mapper;

import com.my_ebook.entity.Car;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CarMapper {

    int insert(Car car);

    int deleteById(int carId);

    int deleteByCustomer(int customerId);

    int update(Car car);

    Car selectById(int carId);

    List<Car> selectByCustomer(int customerId);

    Car selectByCustomerAndBook(@Param("customerId") int customerId, @Param("bookId") int bookId);
}
