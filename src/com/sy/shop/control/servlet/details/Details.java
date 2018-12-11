package com.sy.shop.control.servlet.details;

import com.sy.shop.good.Good;
import com.sy.shop.good.GoodIf;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Details extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object id = request.getAttribute("good_id");
        int good_id =  (int)id;
        GoodIf gf = new GoodIf();
        Good good = null;
        try {
            good = gf.queryOne(good_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(good ==null){
            response.sendRedirect("/syshop/list.jsp");
        }else{
            request.getRequestDispatcher("/deails.jsp").forward(request,response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}