package com.sy.shop.control.servlet.good;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Good extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String netx = request.getParameter("next");
        int next = Integer.parseInt(netx);
        int cnext;
        if(next==0){
            cnext = 0;
        }else{
            cnext = next;
        }
        request.setAttribute("next",cnext);
        request.getRequestDispatcher("/list.jsp").forward(request,response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}