package com.my_ebook.intercpter;

import com.my_ebook.entity.Employee;
import com.sun.jndi.toolkit.url.Uri;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * @ClassName:EmployLoginIntercpter
 * @Author:liwei
 * @Description: TODO 员工登录的拦截器
 * @Date:2019/6/27 15:30
 * @Version: V1.0
 */
public class EmployLoginIntercpter implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        String uri = httpServletRequest.getRequestURI();
        if (uri.contains("/login")) {
            return true;
        }

        HttpSession session = httpServletRequest.getSession();
        Employee employee = (Employee) session.getAttribute("employee");
        if (employee == null) {
            httpServletResponse.sendRedirect("/bg/login.jsp");
            return false;
        } else {
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
