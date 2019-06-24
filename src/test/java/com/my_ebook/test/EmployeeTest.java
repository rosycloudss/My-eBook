package com.my_ebook.test;

import com.my_ebook.entity.Employee;
import com.my_ebook.service.EmployeeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class EmployeeTest {

    @Autowired
    EmployeeService employeeService;

    @Test
    public void addTest(){
        Employee employee = new Employee();
        employee.setName("李伟");
        employee.setPhone("17803878845");
        employee.setPassword("123456");
        employee.setPosition(1);
        employee.setCreateTime(new Date(System.currentTimeMillis()));
        System.out.println(employeeService.add(employee));
    }

    @Test
    public void loginTest(){
        System.out.println(employeeService.login("17803878845","123456"));
    }
}
