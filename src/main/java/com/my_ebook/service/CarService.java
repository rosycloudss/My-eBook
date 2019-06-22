package com.my_ebook.service;

import com.my_ebook.entity.Car;
import com.my_ebook.entity.Category;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

public interface CarService extends BaseService<Car>, PageService<Car> {

    /**
     * 删除顾客的所有购物车信息
     * @param customerId
     * @return
     */
    int deleteByCustomerId(int customerId);

    /**
     * 查询顾客的购物车信息
     * @param customerId
     * @param page
     * @return
     */
    Page<Car> findCustomerCars(int customerId, Page page);
}
