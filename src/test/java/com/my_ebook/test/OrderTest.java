package com.my_ebook.test;

import com.my_ebook.entity.Customer;
import com.my_ebook.entity.Order;
import com.my_ebook.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class OrderTest {

    @Autowired
    OrderService orderService;

    @Test
    public void addTest(){
        Order order = new Order();
        Customer customer = new Customer();
        customer.setID(4);
        order.setCustomer(customer);
//        order.setID(copy.getID());
        order.setOrderID("12345678911");
        order.setOrderStatus(Order.STATUS.TO_BE_CONFIRMED);
        order.setReceiver("李伟");
        order.setRecevingAddr("郑州大学");
        order.setPhone("17803878845");
        order.setDelivery(0);
        order.setPostStatus(Order.STATUS.SHIPPED);
        order.setPayStatus(Order.STATUS.UNPAID);
        order.setOrderDate(new Date(System.currentTimeMillis()));
        order.setRemark("你好");
        order.setOrderMount(100);
        order.setTotalPrice((float)150);
        System.out.println(orderService.add(order));
    }


    @Test
    public void findTest(){

        Date start = new Date(System.currentTimeMillis() - 1000000);
        Date end = new Date(System.currentTimeMillis());
        System.out.println(orderService.findOrders(4,"12345678911",Order.STATUS.TO_BE_CONFIRMED,0,
                Order.STATUS.SHIPPED,Order.STATUS.UNPAID,"2019-6-26","2019-6-28",1,null));

    }
}
