package com.my_ebook.service.impl;

import com.my_ebook.entity.Car;
import com.my_ebook.service.CarService;
import com.my_ebook.vo.Page;

public class CarServiceImpl implements CarService {
    public int deleteByCustomerId(int customerId) {
        return 0;
    }

    public Page<Car> findCustomerCars(int customerId, Page page) {
        return null;
    }

    public int add(Car car) {
        return 0;
    }

    public int delete(int id) {
        return 0;
    }

    public int update(Car car) {
        return 0;
    }

    public int count(Car car) {
        return 0;
    }

    public Page<Car> findAll(Car car, Page page) {
        return null;
    }

    public Page<Car> initPage(Car car, Page<Car> page) {
        return null;
    }
}
