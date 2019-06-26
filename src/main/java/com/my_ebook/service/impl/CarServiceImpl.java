package com.my_ebook.service.impl;

import com.my_ebook.entity.Car;
import com.my_ebook.mapper.CarMapper;
import com.my_ebook.service.CarService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarMapper carMapper;

    @Override
    public int deleteByCustomerId(int customerId) {
        return carMapper.deleteByCustomer(customerId);
    }

    @Override
    public int deleteByCarId(int carId) {
        return carMapper.deleteById(carId);
    }

    @Override
    public List<Car> findCustomerCars(int customerId) {
        return carMapper.selectByCustomer(customerId);
    }

    @Override
    public int updateCar(int customerId, int bookId, int sign) {
        Car car = carMapper.selectByCustomerAndBook(customerId, bookId);
        if (car != null) {
            if (car.getOrderMount() == 1 && sign == -1) {
                carMapper.deleteById(car.getID());
            } else {
                car.setOrderMount(car.getOrderMount() + sign);
            }
            return carMapper.update(car);
        }
        return 0;
    }


    @Override
    public int add(Car car) {
        System.out.println(car.getCustomer().getID());
        System.out.println(car.getBook().getID());
        Car car1 = carMapper.selectByCustomerAndBook(car.getCustomer().getID(), car.getBook().getID());
        if (car1 != null) {
            car1.setOrderMount(car1.getOrderMount() + 1);
            return carMapper.update(car1);
        } else {
            return carMapper.insert(car);
        }
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Car car) {
        return carMapper.update(car);
    }

    @Override
    public int count(Car car) {
        return 0;
    }

    @Override
    public Page<Car> findAll(Car car, Page page) {
        return null;
    }

    @Override
    public Page<Car> initPage(Car car, Page<Car> page) {
        return null;
    }

}
