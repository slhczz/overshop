package com.sy.shop.good;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @Author: Administrator
 * @Date: 2018/12/7 9:53
 * @Version 1.0
 */
public interface GoodImpl {

    public  ArrayList<ArrayList<Good>> queryLimit(int next) throws SQLException;
    public ArrayList<Good> queryAll() throws SQLException;
    public Good queryOne(int id) throws SQLException;


}
