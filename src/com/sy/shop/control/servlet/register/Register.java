package com.sy.shop.control.servlet.register;
import com.sy.shop.user.User;
import com.sy.shop.user.UserIf;
import org.apache.commons.beanutils.BeanUtils;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Register extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, String[]> map = request.getParameterMap();
        User user = new User();
        UserIf uf= new UserIf();
        boolean register = false;
        //创建用户唯一标识
        user.setUuid(UUID.randomUUID().toString());
        try {
            //将注册信息保存在user bean中
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        try {
            //用户信息保存在数据库中
            register = uf.register(user.getPhone(), user.getEmail(), user.getPassword(), user.getUuid());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(register){

            response.sendRedirect("/syshop/login.jsp");
        }else{
            response.sendRedirect("/syshop/index.jsp");
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}