<%@ page import="com.sy.shop.good.GoodIf" %>
<%@ page import="com.sy.shop.good.Good" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="main">
    <div class="container">
        <div id="filter">
            <table>
                <tbody>
                <tr>
                    <th width="100">品牌：</th>
                    <td>
                        <ul class="brand">
                            <li>美宝莲（MAYBELLINE）</li>
                            <li>迪奥（Dior）</li>
                            <li>香奈儿（Chanel）</li>
                            <li>卡姿兰（Carslan）</li>
                            <li>圣罗兰（YSL）</li>
                            <li>迪奥（Dior）</li>
                            <li>兰蔻（LANCOME）</li>
                            <li>范思哲（VERSACE）</li>
                            <li>纪梵希（Givenchy）</li>
                            <li>欧莱雅（LOREAL）</li>
                            <li>阿玛尼（ARMANI）</li>
                            <li>博柏利（BURBERRY）</li>
                            <li>古驰（GUCCI）</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <th>国家/地区：</th>
                    <td>
                        <ul class="region">
                            <li>中国</li>
                            <li>法国</li>
                            <li>美国</li>
                            <li>中国台湾</li>
                            <li>意大利</li>
                            <li>英国</li>
                            <li>瑞士</li>
                        </ul>
                    </td>
                </tr>
                </tbody>
            </table>
            <table>
                <tbody>
                <tr>
                    <td class="center selected">人气</td>
                    <td class="center">销量</td>
                    <td class="center">新品</td>
                    <td class="center">价格</td>
                    <td>
                        <input type="text" name="min" placeholder="￥" class="text">
                        <span> - </span>
                        <input type="text" name="max" placeholder="￥" class="text">
                    </td>
                    <td>
                        <label>
                            <input type="checkbox" name="tag" value="0" class="checkbox">
                            <span>自营商品</span>
                        </label>
                        <label>
                            <input type="checkbox" name="tag" value="1" class="checkbox">
                            <span>有货商品</span>
                        </label>
                        <label>
                            <input type="checkbox" name="tag" value="2" class="checkbox">
                            <span>促销商品</span>
                        </label>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div id="goods-list">
            <%
                Object nex = request.getAttribute("next");
                int next;
                if (nex == null) {
                    next = 0;
                } else {
                    next = (int) nex;
                }
                GoodIf gf = new GoodIf();
                ArrayList<Good> goodAll = gf.queryAll();
                int all = goodAll.size();
                int pageAll = all/20+1;
                ArrayList<ArrayList<Good>> goods = gf.queryLimit(next);
                for (ArrayList<Good> good : goods) {
            %>
            <div class="goods-list-row clear">
                <%
                    for (Good good_itenm : good) {
                %>
                <div class="goods-list-item">
                    <div class="goods-list-image">
                        <a href="/syshop/details?good_id=<%=good_itenm.getId()%>">
                            <img src="<%=good_itenm.getGoods_img()%>">
                        </a>
                    </div>
                    <div class="goods-list-name">
                        <a href="/syshop/details?good_id=<%=good_itenm.getId()%>"><%=good_itenm.getMain_title()%>
                        </a>
                    </div>
                    <div class="goods-list-info">
                        <strong><em>￥</em><%=good_itenm.getPrice()%>
                        </strong>
                        <em>包邮</em>
                        <span>￥<%=good_itenm.getOld_price()%>></span>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <%
                }
            %>
            <div id="pagination">
                <%
                    if(next == 0){
                        %>
                        <span class="prev">上一页</span>
                        <span class="current">1</span>
                        <%
                    }else{
                         %><a href="/syshop/good?next=<%=next-20%>" class="prev">上一页</a>
                    <%
                    if((next/20) < 3){
                        %> <a href="/syshop/good?next=0">1</a><%
                    }else{
                        %> <a href="/syshop/good?next=0">1</a><%
                    }
            %>

                <%
                    }
                    %>
              <%
              if(next != 20){
                  %>
                <a href="/syshop/good?next=20">2</a>
                <%
              }else{
                  %> <span class="current">2</span><%
              }
              if(next != 40){
            %>
                <a href="/syshop/good?next=40">3</a>
                <%
                }else{
                %> <span class="current">3</span><%
                }
                if(next != 60){
            %>
                <a href="/syshop/good?next=60">4</a>
                <%
                }else{
                %> <span class="current">4</span><%
                }
                if(next != 80){
            %>
                <a href="/syshop/good?next=60">5</a>
                <%
                }else{
                %> <span class="current">5</span><%
                }
                if(next != 100){
            %>
                <a href="/syshop/good?next=80">6</a>
                <%
                }else{
                %> <span class="current">6</span><%
                }
              %>
                <a href="/syshop/good?next=<%=next+20%>" class="next">下一页</a>
            </div>
        </div>
    </div>
</div>