package com.my_ebook.controller.bg;

import com.my_ebook.entity.Employee;
import com.my_ebook.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/bg/employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/login")
    public String login(String phone, String password, HttpSession session, Model model) {
        Employee employee = employeeService.login(phone, password);
        if (employee != null) {
            session.setAttribute("employee", employee);
            return "/bg/index";
        } else {
            model.addAttribute("msg", "账号或密码错误");
            return "/bg/login";
        }
    }
}
