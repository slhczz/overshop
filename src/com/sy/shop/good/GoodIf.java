package com.sy.shop.good;

import com.sy.shop.util.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: Administrator
 * @Date: 2018/12/7 9:55
 * @Version 1.0
 */
public class GoodIf extends Good implements GoodImpl {
    @Override
    public  ArrayList<ArrayList<Good>> queryLimit(int next) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from xe_goods limit ?,20";
        List<Good> goods = qr.query(sql, new BeanListHandler<Good>(Good.class),next);
        ArrayList<Good>  list1 = new ArrayList<>();
        ArrayList<Good>  list2 = new ArrayList<>();
        ArrayList<Good>  list3 = new ArrayList<>();
        ArrayList<Good>  list4 = new ArrayList<>();
        ArrayList<Good>  list5 = new ArrayList<>();
        ArrayList<ArrayList<Good>> list = new ArrayList<>();
        for (int i = 0; i < goods.size(); i++) {
            if(i<4){
                list1.add(goods.get(i));
            }else if(i>=4&&i<8){
                list2.add(goods.get(i));
            }else if(i>=8&&i<12){
                list3.add(goods.get(i));
            }else if(i>=12&&i<16){
                list4.add(goods.get(i));
            }else if(i>=16&&i<20){
                list5.add(goods.get(i));
            }
        }
        list.add(list1);
        list.add(list2);
        list.add(list3);
        list.add(list4);
        list.add(list5);

        return list;
    }

    @Override
    public ArrayList<Good> queryAll() throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from xe_goods";
        List<Good> goods = qr.query(sql, new BeanListHandler<Good>(Good.class));
        return (ArrayList<Good>) goods;
    }

    @Override
    public Good queryOne(int id) throws SQLException {
        QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
        String sql = "select * from xe_goods where id = ?";
        Good goodList = qr.query(sql, new BeanHandler<Good>(Good.class), id);
        return goodList;
    }
}
