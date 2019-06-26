package com.my_ebook.service.impl;

import com.my_ebook.entity.Customer;
import com.my_ebook.mapper.CustomerMapper;
import com.my_ebook.service.CustomerService;
import com.my_ebook.service.base.PageService;
import com.my_ebook.util.MD5Utils;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.security.util.Password;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public int add(Customer customer) {
        return customerMapper.insert(customer);
    }

    @Override
    public int delete(int id) {
        return customerMapper.delete(id);
    }

    @Override
    public int update(Customer customer) {
        return customerMapper.update(customer);
    }

    @Override
    public int updatePassword(int id, String oldPassword, String newPassword) {
        Customer customer = customerMapper.getById(id);
        if (MD5Utils.getSaltverifyMD5(oldPassword, customer.getPassword())) {
            return customerMapper.updatePassword(id, MD5Utils.getSaltMD5(newPassword));
        }
        return 0;
    }

    @Override
    public int count(Customer customer) {
        return customerMapper.count(customer);
    }

    @Override
    public Page<Customer> findAll(Customer customer, Page page) {
        page.setPageInfos(customerMapper.select(customer, page));
        return page;
    }

    @Override
    public Page<Customer> initPage(Customer customer, Page<Customer> page) {
        return null;
    }

    @Override
    public Customer login(String phone, String password) {
        Customer customer = customerMapper.getByPhone(phone);
        if (MD5Utils.getSaltverifyMD5(password, customer.getPassword())) {
            return customer;
        }
        return null;
    }

    @Override
    public Customer findById(Integer customerId) {
        return customerMapper.getById(customerId);
    }
}
