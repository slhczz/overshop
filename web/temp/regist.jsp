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
        <div id="register">
            <h1>注册</h1>
            <form action="/syshop/register" method="post">
                <table class="form">
                    <tbody><tr>
                        <th>
                            <label for="mobile" class="label">手机号码</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="text" name="phone" id="mobile" class="medium" onblur="mobileBlur()">
                            <span class="errorMobile">手机号码错误!</span>
                            <span class="tip">仅限中国大陆移动、电信、联通手机号码。</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="email" class="label">电子邮箱</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="text" name="email" id="email" class="medium" onblur="emailBlur()">
                            <span class="errorEmail">邮箱格式错误!</span>
                            <span class="tip">请输入您常用的电子邮箱地址。</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="password" class="label">设置密码</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="password" name="password" id="password" class="medium" onblur="passwordBlur()">
                            <span class="errorPassword">密码格式错误!</span>
                            <span class="tip">仅限6~16个字母、数字、特殊符号。</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <label for="password-confirmation" class="label">重复密码</label>
                            <em class="required">*</em>
                        </th>
                        <td>
                            <input type="password" name="password_confirmation" id="password-confirmation" class="medium" onblur="password2Blur()">
                            <span class="errorPassword2">两次密码输入不同!</span>
                            <span class="tip">请再次输入您设置的密码。</span>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" value="注 册" id="submit" class="submit">
                        </td>
                    </tr>
                    </tbody></table>
            </form>
        </div>
    </div>
</div>