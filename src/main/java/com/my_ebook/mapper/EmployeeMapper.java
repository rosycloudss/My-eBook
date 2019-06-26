package com.my_ebook.mapper;

import com.my_ebook.entity.Employee;
import com.my_ebook.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeMapper {

    int insert(Employee employee);

    int deleteById(int employeeId);

    int deleteByIds(List<Integer> employeeIds);

    int update(Employee employee);

    int count(@Param("employee") Employee employee);

    Employee selectById(@Param("employeeId") int employeeId);

    List<Employee> selectByPhone(@Param("phone") String phone);

    List<Employee> selectByParameter(@Param("employee") Employee employee, @Param("page") Page page);
}
