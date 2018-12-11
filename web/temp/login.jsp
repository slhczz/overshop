<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="main">
    <div class="container">
        <div id="login">
            <h1>登录</h1>
            <form action="/syshop/login" method="post" id="login-form" onsubmit="return login()">
                <table class="form">
                    <tbody><tr>
                        <th>
                            <label for="account" class="label">账号</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="text" name="account" placeholder="邮箱/手机号码" id="account" class="medium">
                            <span class="errorMobile">输入不能为空!</span>
                            <span class="tip">没有账号？<a href="./register.html">免费注册</a></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="password" class="label">密码</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="password" name="password" id="password" class="medium">
                            <span class="errorMobile">输入不能为空!</span>
                            <span class="tip">密码忘了？<a href="#">找回密码</a></span>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <label>
                                <input type="checkbox" name="auto" value="auto" id="check">
                                <span>七天免登陆</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" value="登 录" id="submit" class="submit" "="">
                        </td>
                    </tr>
                    </tbody></table>
            </form>
        </div>
    </div>
</div>