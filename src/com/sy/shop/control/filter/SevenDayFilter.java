package com.sy.shop.control.filter;

import com.sy.shop.user.User;
import com.sy.shop.user.UserIf;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

public class SevenDayFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        Cookie[] cookies = request.getCookies();
        String account = null;
        String passowrd = null;
//        String requestServletPath = request.getServletPath();
//        if(!"/index.jsp".equals(requestServletPath) || "/login".equals(requestServletPath)|| "/register.jsp".equals(requestServletPath)||"/login.jsp".equals(requestServletPath)){
//            filterChain.doFilter(request,response);
//            return;
//        }
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("account".equals(cookie.getName())) {
                    account = cookie.getValue();
                }
                if ("password".equals(cookie.getName())) {
                    passowrd = cookie.getValue();
                }
            }
            if (account != null && passowrd != null) {
                UserIf uf = new UserIf();
                User user = null;
                try {
                    user = uf.login(account, passowrd);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                if (user != null) {
                    if (account.equals(user.getPhone()) && passowrd.equals(user.getPassword()) || account.equals(user.getEmail()) && passowrd.equals(user.getPassword())) {
                        HttpSession session = request.getSession();
                        session.setAttribute("user", user);
                        filterChain.doFilter(request, response);
                    } else {
                        //用户密码错误
                        response.sendRedirect("/syshop/login.jsp");
                    }
                } else {
                    //session为空
                    response.sendRedirect("/syshop/login.jsp");
                }
            } else {
                //用户密码为空
                response.sendRedirect("/syshop/login.jsp");
            }
        } else {
            //没有用户Cookie
            response.sendRedirect("/syshop/index.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}
