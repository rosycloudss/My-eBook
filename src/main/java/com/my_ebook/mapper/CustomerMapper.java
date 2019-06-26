package com.my_ebook.mapper;

import com.my_ebook.entity.Customer;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CustomerMapper {

    public Customer getByPhone(String phone);

    public Customer getById(int customerId);

    public int update(Customer customer);

    public int updatePassword(@Param("customerId") int customerId,
                              @Param("password") String password);

    public int insert(Customer customer);

    /*************************李伟**************************************/

    List<Customer> select(@Param("customer") Customer customer, @Param("page") Page page);

    int count(@Param("customer") Customer customer);

    /*************************李伟**************************************/
}
