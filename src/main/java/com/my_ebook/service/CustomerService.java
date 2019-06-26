package com.my_ebook.service;

import com.my_ebook.entity.Customer;
import com.my_ebook.service.base.BaseService;
import com.my_ebook.service.base.PageService;

public interface CustomerService extends BaseService<Customer>, PageService<Customer> {

    public Customer login(String phone, String password);

    public int updatePassword(int id, String oldPassword, String newPassword);
}
