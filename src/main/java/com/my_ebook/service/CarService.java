package com.my_ebook.service;

import com.my_ebook.entity.Car;
import com.my_ebook.entity.Category;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;

public interface CarService extends BaseService<Car>, PageService<Car> {

    /**
     * 删除顾客的所有购物车信息
     * @param customerId
     * @return
     */
    int deleteByCustomerId(int customerId);

    /**
     * 删除购物车中单个商品信息
     * @param carId
     * @return
     */
    int deleteByCarId(int carId);

    /**
     * 查询顾客的购物车信息
     * @param customerId
     * @return
     */
    List<Car> findCustomerCars(int customerId);

}
