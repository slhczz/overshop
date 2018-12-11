<%@ page import="com.sy.shop.user.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="topbar">
    <div class="container">
        <div id="topbar-location">
            <i class="iconfont icon-location"></i>
            <a href="#">北京</a>
        </div>
        <div id="topbar-menu">
            <ul>
                <%
                    Object obj = session.getAttribute("user");
                    User user = (User) obj;
                    if(user == null){
                %>
                <li>
                    <a href="/syshop/login.jsp" class="red">登录</a>
                </li>
                <li class="separator">|</li>
                <li>
                    <a href="/syshop/register.jsp">免费注册</a>
                </li>
                <%
                }else{
                %>
                <li>
                    <a href="/syshop/myself.jsp" class="red"><%=user.getUsername()%></a>
                </li>
                <li class="separator">|</li>
                <li>
                    <a href="/syshop/quitlogin">退出</a>
                </li>
                <%
                    }
                %>
                <li class="separator">|</li>
                <li>
                    <a href="#">我的订单</a>
                </li>
                <li class="separator">|</li>
                <li>
                    <a href="#">收藏夹</a>
                </li>
                <li class="separator">|</li>
                <li>
                    <a href="#">帮助中心</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="header">
    <div class="container">
        <div id="header-logo">
            <a href="/syshop/index.jsp">
                <h1>LOGO</h1>
            </a>
        </div>
        <div id="header-search">
            <div id="header-search-combobox">
                <form action="#" method="post">
                    <input type="text" name="keywords" placeholder="搜索" id="header-search-combobox-text">
                    <button type="submit" id="header-search-combobox-button">
                        <i class="iconfont icon-search"></i>
                    </button>
                </form>
            </div>
            <div class="clear">
                <ul id="header-search-hotkeywords">
                    <li>
                        <strong>热搜：</strong>
                    </li>
                    <li>
                        <a href="#">笔记本</a>
                    </li>
                    <li class="separator">|</li>
                    <li>
                        <a href="#">平板</a>
                    </li>
                    <li class="separator">|</li>
                    <li>
                        <a href="#">手机</a>
                    </li>
                    <li class="separator">|</li>
                    <li>
                        <a href="#">墨盒</a>
                    </li>
                </ul>
                <a href="#" id="header-search-advancedsearch">高级搜索</a>
            </div>
        </div>
        <div id="header-cart">
            <i class="iconfont icon-cart"></i>
            <a href="#">购物车</a>
            <strong>0</strong>
        </div>
    </div>
</div>
<div id="navigation">
    <div class="container">
        <div id="navigation-category">
            <div id="navigation-category-heading">
                <div class="float-left">
                    <i class="iconfont icon-menu"></i>
                    <strong>全部商品分类</strong>
                </div>
                <div class="float-right">
                    <i class="iconfont icon-dropdown"></i>
                </div>
            </div>
            <div id="navigation-category-content">
                <dl>
                    <dt>美容彩妆</dt>
                    <dd>
                        <a href="#">护肤</a>
                        <em>|</em>
                        <a href="#">面膜</a>
                        <em>|</em>
                        <a href="#">防晒</a>
                        <em>|</em>
                        <a href="#">彩妆</a>
                        <em>|</em>
                        <a href="#">香水</a>
                    </dd>
                </dl>
                <dl>
                    <dt>服饰箱包</dt>
                    <dd>
                        <a href="#">大牌</a>
                        <em>|</em>
                        <a href="#">服饰</a>
                        <em>|</em>
                        <a href="#">箱包</a>
                        <em>|</em>
                        <a href="#">配饰</a>
                        <em>|</em>
                        <a href="#">鞋履</a>
                    </dd>
                </dl>
                <dl>
                    <dt>数码家电</dt>
                    <dd>
                        <a href="#">手机</a>
                        <em>|</em>
                        <a href="#">生活</a>
                        <em>|</em>
                        <a href="#">厨房</a>
                        <em>|</em>
                        <a href="#">数码</a>
                        <em>|</em>
                        <a href="#">办公</a>
                    </dd>
                </dl>
                <dl>
                    <dt>家居个护</dt>
                    <dd>
                        <a href="#">洗护</a>
                        <em>|</em>
                        <a href="#">居家</a>
                        <em>|</em>
                        <a href="#">女性</a>
                        <em>|</em>
                        <a href="#">宠物</a>
                        <em>|</em>
                        <a href="#">家纺</a>
                    </dd>
                </dl>
                <dl>
                    <dt>运动户外</dt>
                    <dd>
                        <a href="#">运动服饰</a>
                        <em>|</em>
                        <a href="#">运动鞋</a>
                        <em>|</em>
                        <a href="#">户外服饰</a>
                        <em>|</em>
                        <a href="#">户外鞋靴</a>
                        <em>|</em>
                        <a href="#">户外装备</a>
                    </dd>
                </dl>
                <dl>
                    <dt>环球美食</dt>
                    <dd>
                        <a href="#">饮品</a>
                        <em>|</em>
                        <a href="#">零食</a>
                        <em>|</em>
                        <a href="#">粮油</a>
                        <em>|</em>
                        <a href="#">糕点</a>
                    </dd>
                </dl>
            </div>
        </div>
        <div id="navigation-menu">
            <ul>
                <li>
                    <a href="#">促销</a>
                </li>
                <li>
                    <a href="#">秒杀</a>
                </li>
                <li>
                    <a href="#">优惠券</a>
                </li>
            </ul>
        </div>
    </div>
</div>