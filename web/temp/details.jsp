<%@ page import="com.sy.shop.good.Good" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Object object = session.getAttribute("good");
   Good good = (Good) object;
   %>
<ul>
    <ol>
        <%=good.getMain_title()%>
    </ol>
</ul>
<%
%>
