package com.my_ebook.filter;

import com.my_ebook.entity.Employee;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class EmployLoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        System.out.println("开始拦截");
        String uri = request.getRequestURI();
        if (uri.contains("login")) {
            System.out.println("login");
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            HttpSession session = request.getSession();
            Employee employee = (Employee) session.getAttribute("employee");
            if (employee == null) {
                PrintWriter out = servletResponse.getWriter();
                response.sendRedirect("/bg/login.jsp");

            }
        }
    }

    @Override
    public void destroy() {

    }
}
