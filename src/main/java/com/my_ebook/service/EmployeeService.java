package com.my_ebook.service;

import com.my_ebook.entity.Employee;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.vo.Page;

import java.util.List;

public interface EmployeeService extends BaseService<Employee>, PageService<Employee> {


    /**
     * 修改密码
     * @param employeeId
     * @param oldPassword
     * @param password
     * @return
     */
    int changePassword(Integer employeeId,String oldPassword,String password);

    /**
     * 找回密码
     * @param phone
     * @param password
     * @return
     */
    int forgotPassword(String phone,String password);
    /**
     * 员工登录
     *
     * @param phone
     * @param password
     * @return
     */
    Employee login(String phone, String password);

    /**
     *
     * @param employeeId
     * @param phone
     * @param name
     * @param position
     * @param page
     * @return
     */
    Page<Employee> find(Integer employeeId,String phone,String name,Integer position,Page<Employee> page);

    /**
     * 通过电话号码查询员工信息
     * @param phone
     * @return
     */
    List<Employee> findByPhone(String phone);

}
