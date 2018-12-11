<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="main">
    <div class="container">
        <div id="cart">
            <h1>购物车</h1>
            <form action="#" method="post">
                <table class="form">
                    <thead>
                    <tr>
                        <th width="8%">选择</th>
                        <th width="50%">商品</th>
                        <th width="13%">单价（元）</th>
                        <th width="15%">数量</th>
                        <th width="14%">金额（元）</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="2">
                            <label>
                                <input type="checkbox" name="all">
                                <span>全选</span>
                            </label>
                            <a href="#" id="cart-delete">删除</a>
                        </td>
                        <td colspan="3">
                            <span>合计：</span>
                            <strong id="total-amount">￥<em>0.00</em></strong>
                            <input type="submit" value="立即结算" id="settlement">
                        </td>
                    </tr>
                    </tfoot>
                    <tbody id="cart-goods-list">
                    <tr>
                        <td>
                            <input type="checkbox" name="id" value="1">
                        </td>
                        <td class="goods">
                            <div class="goods-image">
                                <img src="./pic/goods/1.jpg">
                            </div>
                            <div class="goods-information">
                                <h3>Dior 迪奥 花漾甜心小姐 女士淡香水</h3>
                                <ul>
                                    <li>50毫升</li>
                                    <li>不支持7天无理由退货</li>
                                </ul>
                            </div>
                        </td>
                        <td>
                            <span class="price">￥<em>498.00</em></span>
                        </td>
                        <td>
                            <div class="combo">
                                <input type="button" name="minus" value="-" class="combo-minus">
                                <input type="text" name="count" value="1" class="combo-value">
                                <input type="button" name="plus" value="+" class="combo-plus">
                            </div>
                        </td>
                        <td>
                            <strong class="amount">￥<em>0.00</em></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="id" value="2">
                        </td>
                        <td class="goods">
                            <div class="goods-image">
                                <img src="./pic/goods/3.jpg">
                            </div>
                            <div class="goods-information">
                                <h3>LANCÔME 兰蔻 嫩肌活肤精华肌底液</h3>
                                <ul>
                                    <li>50毫升</li>
                                    <li>不支持7天无理由退货</li>
                                </ul>
                            </div>
                        </td>
                        <td>
                            <span class="price">￥<em>598.00</em></span>
                        </td>
                        <td>
                            <div class="combo">
                                <input type="button" name="minus" value="-" class="combo-minus">
                                <input type="text" name="count" value="1" class="combo-value">
                                <input type="button" name="plus" value="+" class="combo-plus">
                            </div>
                        </td>
                        <td>
                            <strong class="amount">￥<em>0.00</em></strong>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>