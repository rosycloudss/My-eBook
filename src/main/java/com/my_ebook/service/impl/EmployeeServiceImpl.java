package com.my_ebook.service.impl;

import com.my_ebook.entity.Book;
import com.my_ebook.entity.Employee;
import com.my_ebook.mapper.EmployeeMapper;
import com.my_ebook.service.EmployeeService;
import com.my_ebook.util.MD5Utils;
import com.my_ebook.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Resource
    private EmployeeMapper employeeMapper;

    /**
     * 返回 1 修改成功
     * 返回 0 修改失败
     *
     * @param employeeId
     * @param oldPassword
     * @param newPassword
     * @return
     */
    public int changePassword(Integer employeeId, String oldPassword, String newPassword) {
        Employee employee = employeeMapper.selectById(employeeId);
        if (employee != null && MD5Utils.getSaltverifyMD5(oldPassword, employee.getPassword())) {
            employee.setPassword(newPassword);
            return update(employee) > 0 ? 1 : 0;//手机号或原密码错误
        }
        return 0;
    }

    /**
     * 忘记密码
     * 返回 1 修改成功
     * 返回 0 修改失败
     *
     * @param phone
     * @param password
     * @return
     */
    public int forgotPassword(String phone, String password) {
        List<Employee> employeeList = findByPhone(phone);
        if (employeeList != null && !employeeList.isEmpty()) {
            Employee employee = employeeList.get(0);
            employee.setPassword(password);
            return update(employee) > 0 ? 1 : 0;//手机号或原密码错误
        }

        return 0;
    }

    /**
     * 登录
     *
     * @param phone
     * @param password
     * @return
     */
    public Employee login(String phone, String password) {
        List<Employee> employeeList = findByPhone(phone);
        if (employeeList != null && !employeeList.isEmpty()) {
            Employee employee = employeeList.get(0);
            if (MD5Utils.getSaltverifyMD5(password, employee.getPassword())) {
                employee.setPassword(null);
                return employee; //登录成功
            }
        }
        return null; //登录失败
    }

    public List<Employee> findByPhone(String phone) {
        Page<Employee> page = find(null, phone, null, null, null);
        List<Employee> employeeList = page.getPageInfos();
        return employeeList;
    }

    public Page<Employee> find(Integer employeeId, String phone, String name, Integer position, Page<Employee> page) {
        Employee employee = new Employee();
        employee.setID(employeeId);
        employee.setPhone(phone);
        employee.setName(name);
        employee.setPosition(position);
        page = initPage(employee, page);
        return findAll(employee, page);
    }

    public int add(Employee employee) {
        employee.setPassword(MD5Utils.getSaltMD5(employee.getPassword()));
        return employeeMapper.insert(employee);
    }

    public int delete(int id) {
        return employeeMapper.deleteById(id);
    }

    public int update(Employee employee) {
        return employeeMapper.update(employee);
    }

    public int count(Employee employee) {
        return employeeMapper.count(employee);
    }

    public Page<Employee> findAll(Employee employee, Page page) {
        page = initPage(employee, page);
        page.setPageInfos(employeeMapper.selectByParameter(employee, page));
        return page;
    }

    public Page<Employee> initPage(Employee employee, Page<Employee> page) {
        if (page == null) {
            page = new Page<Employee>();
            page.setPageStart(1);
            page.setTotalRecord(count(employee));
            page.setPageSize(20);
        }
        return page;
    }
}
