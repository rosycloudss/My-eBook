package com.my_ebook.controller.bg;

import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Customer;
import com.my_ebook.service.CustomerService;
import com.my_ebook.util.WebUtil;
import com.my_ebook.vo.Page;
import jdk.nashorn.internal.scripts.JO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @ClassName:CustomerController
 * @Author:liwei
 * @Description: TODO
 * @Date:2019/6/26 13:59
 * @Version: V1.0
 */
@Controller("bgCustomerController")
@RequestMapping("/bg/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    /**
     * 查询顾客列表
     *
     * @param name
     * @param phone
     * @param currentPage
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(String name, String phone, Integer currentPage, Model model, HttpServletRequest request) {
        Customer customer = new Customer();
        if (name != null) {
            customer.setName(name);
        }
        if (phone != null) {
            customer.setPhone(phone);
        }
        System.out.println(customer);
        currentPage = (currentPage != null ? currentPage : 1);
        Page<Customer> customerPage = new Page<Customer>(customerService.count(customer), currentPage, 20);
        customerPage.setPath(WebUtil.getPath(request));

        customerPage = customerService.findAll(customer, customerPage);

        model.addAttribute("customerPage", customerPage);

        return "/bg/customer-list";
    }

    /**
     * 查询一个客户的信息
     *
     * @param customerId
     * @param op
     * @param model
     * @return
     */
    @RequestMapping("/getOne")
    public String getOne(Integer customerId, Integer op, Model model) {
        if (customerId != null) {
            Customer customer = customerService.findById(customerId);
            model.addAttribute("customer", customer);
        }
        op = (op != null ? op : 0);

        switch (op) {
            case 1: {
                return "";
            }
            default: {
                return "/bg/customer-edit";
            }
        }
    }

    /**
     * 删除顾客信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public JSONObject delete(@RequestBody Map<String,Integer> map) {
        Integer customerId = map.get("customerId");
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        if (customerId != null && customerService.delete(customerId) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 修改顾客信息
     *
     * @param customer
     * @return
     */
    @ResponseBody
    @RequestMapping("/edit")
    public JSONObject edit(@RequestBody Customer customer) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        if (customer != null && customerService.update(customer) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

}
