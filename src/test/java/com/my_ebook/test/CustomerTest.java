package com.my_ebook.test;

import com.my_ebook.entity.Customer;
import com.my_ebook.service.CustomerService;
import com.my_ebook.util.MD5Utils;
import com.my_ebook.vo.Page;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CustomerTest {
    @Autowired
    CustomerService customerService;

    @Test
    public void addTest() {
        Customer customer = new Customer();
//        customer.setID(copy.getID());
        customer.setName("李伟");
        customer.setNickname("rosycloudss");
        customer.setGender("男");
        customer.setPhone("17803878845");
        customer.setPassword(MD5Utils.getSaltMD5("123456"));
        customer.setEmail("1759840027@qq.com");
        customer.setCreateTime(new Date(System.currentTimeMillis()));
        customer.setLastLoginTime(null);
        customer.setAddr("郑州大学");
        customer.setZipCode("123456");
        System.out.println(customerService.add(customer));
    }

    @Test
    public void findTest(){
        Customer customer = new Customer();
//        customer.setID(copy.getID());
        customer.setName("李伟");
        customer.setNickname("rosycloudss");
        customer.setGender("男");
        customer.setPhone("17803878845");
        customer.setPassword(MD5Utils.getSaltMD5("123456"));
        customer.setEmail("1759840027@qq.com");
        customer.setCreateTime(new Date(System.currentTimeMillis()));
        customer.setLastLoginTime(null);
        customer.setAddr("郑州大学");
        customer.setZipCode("123456");

        Page<Customer> page = new Page<Customer>(customerService.count(customer),1,20);
        System.out.println(customerService.findAll(customer,page));;
    }
}
