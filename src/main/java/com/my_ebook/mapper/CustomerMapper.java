package com.my_ebook.mapper;

import com.my_ebook.entity.Customer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface CustomerMapper {

    public Customer getByPhone(String phone);

    public Customer getById(int customerId);

    public int update(Customer customer);

    public int updatePassword(@Param("customerId") int customerId,
                              @Param("password") String password);

    public int insert(Customer customer);
}
