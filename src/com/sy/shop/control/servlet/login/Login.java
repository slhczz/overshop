package com.sy.shop.control.servlet.login;

import com.sy.shop.user.User;
import com.sy.shop.user.UserIf;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Login extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取数据
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String auto = request.getParameter("auto");

        //判断是否有用户数据传过来
        if(account == null&&password == null){
            //没有返回登录页
            response.sendRedirect("/syshop/login.jsp");
        }else {
            //有登录信息
            UserIf uf = new UserIf();
            try {
                User user = uf.login(account, password);
                if (user != null) {
                    HttpSession session = request.getSession();
                    //是否选择7天免登陆
                    if(auto != null){
                        Cookie c_account = new Cookie("account",account);
                        Cookie c_password = new Cookie("password",user.getPassword());
                        Cookie jssession = new Cookie("JSESSIONID",session.getId());
                        //将cookie的销毁时间设置为7天
                        c_account.setMaxAge(60*60*24*7);
                        response.addCookie(jssession);
                        c_account.setMaxAge(60*60*24*7);
                        response.addCookie(c_account);
                        c_password.setMaxAge(60*60*24*7);
                        response.addCookie(c_password);
                    }

                    //将用户信息和文件夹名称保存在session中
                    session.setAttribute("user", user);
                    //进入上传文件和查看文件页面
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/syshop/login.jsp");

                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}