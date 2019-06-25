package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Employee;
import com.my_ebook.service.EmployeeService;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
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
            return "redirect:/bg/index.jsp";
        } else {
            model.addAttribute("msg", "账号或密码错误");
            return "/bg/login";
        }
    }

    /**
     * 添加员工
     *
     * @param employee
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public JSONObject addEmployee(@RequestBody Employee employee) {
        JSONObject jsonObject = new JSONObject();
        if (employee != null && employeeService.add(employee) > 0) {
            jsonObject.put("result", 1);//添加成功
        } else {
            jsonObject.put("result", 0);//添加失败
        }
        return jsonObject;
    }

    /**
     * 批量删除员工信息
     *
     * @param employeeIds
     * @return
     */
    @ResponseBody
    @RequestMapping("/delete/all")
    public JSONObject deletEmployee(List<Integer> employeeIds) {
        JSONObject jsonObject = new JSONObject();
        int result = employeeService.deleteByIds(employeeIds);
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 删除员工信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public JSONObject deleteEmployee(@RequestBody Map<String, Integer> map) {
        Integer employeeId = map.get("employeeId");

        JSONObject jsonObject = new JSONObject();
        int result = employeeService.delete(employeeId);
        jsonObject.put("result", result);
        return jsonObject;
    }

    @RequestMapping("/list")
    public String employeeList(String name, String phone, Integer currentPage, Model model, HttpServletRequest request) {
        Employee employee = new Employee();
        employee.setPhone(phone);
        employee.setName(name);
        System.out.println(employeeService);
        currentPage = (currentPage == null ? 1:currentPage);
        Page<Employee> page = new Page<Employee>(employeeService.count(employee), currentPage, 20);
        page.setPath(WebUtil.getPath(request));
        System.out.println(page);
        page = employeeService.findAll(employee, page);
        System.out.println(page);
//        page.setPath(null);
        model.addAttribute("employeePage", page);
        return "/bg/employee-list";
    }

    /**
     * 查询单个员工信息
     *
     * @param employeeId
     * @return
     */
    @RequestMapping("/get_edit_employee")
    public String getEmployee(Integer employeeId,Model model) {
        Employee employee = employeeService.findById(employeeId);
        model.addAttribute("employee",employee);
        System.out.println(employee);
        return "/bg/employee-edit";
}

    /**
     * 修改员工信息
     * @param employee
     * @return
     */
    @ResponseBody
    @RequestMapping("/edit")
    public JSONObject editEmployee(@RequestBody Employee employee){
        JSONObject jsonObject = new JSONObject();
        if(employeeService.update(employee) > 0){
            jsonObject.put("result",1 );
        }else {
            jsonObject.put("result",0 );
        }

        return jsonObject;
    }

//    public
}
