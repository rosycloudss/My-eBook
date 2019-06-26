package com.my_ebook.controller.fg;

import com.my_ebook.entity.Customer;
import com.my_ebook.service.CustomerService;
import com.my_ebook.util.DateUtil;
import com.my_ebook.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@RequestMapping("/fg/customer")
@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(Model model, @RequestParam("name") String name, @RequestParam("nickname") String nickname,
                           @RequestParam("phone") String phone, @RequestParam("password") String password) {
        if (phone !=null && password != null) {
            if (customerService.findByPhone(phone) != null) {
                model.addAttribute("msg", "该号码已经被注册！");
                System.out.println("注册过");
                return "/fg/register";
            }
            Customer customer = new Customer();
            customer.setPhone(phone);
            customer.setName(name);
            customer.setNickname(nickname);
            customer.setPassword(MD5Utils.getSaltMD5(password));
            customer.setCreateTime(DateUtil.getCurrentDate());
            customer.setCreateTime(DateUtil.getCurrentDate());
            customerService.add(customer);
            model.addAttribute("msg", "注册成功，请登录");

            return "/fg/login";
        }
        model.addAttribute("msg", "账号密码不能为空");
        return "/fg/register";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Model model, HttpSession session, @RequestParam("phone") String phone,
                        @RequestParam("password") String password) {
        Customer customer = customerService.login(phone, password);
        if (customer != null) {
            session.setAttribute("customer", customer);
            return "redirect:/fg/book/bookList";
        }
        model.addAttribute("msg", "账号或密码错误！");
        return "/fg/login";
    }

    @RequestMapping(value = "logout")
    public String logout(HttpSession session, Model model) {
        session.removeAttribute("customer");
        model.addAttribute("msg", "退出登录成功！");
        return "/fg/login";
    }

    /**
     * 更改密码
     * @param model
     * @param customerId
     * @param oldPassword
     * @param newPassword
     * @return
     */
    @RequestMapping(value = "changePassword", method = RequestMethod.POST)
    public String changePassword(Model model, int customerId, String oldPassword, String newPassword) {
        if (customerService.updatePassword(customerId, oldPassword, newPassword) == 0 ) {
            model.addAttribute("msg", "修改失败");
        }

        return "";
    }


}
