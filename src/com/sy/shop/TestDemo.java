package com.sy.shop;

import com.sy.shop.good.Good;
import com.sy.shop.good.GoodIf;
import org.junit.Test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

public class TestDemo {
    @Test
    public void show() throws SQLException {
        GoodIf gf = new GoodIf();
        ArrayList<Good> goods = gf.queryAll();
        System.out.println(goods.size());
        System.out.println(goods.size()/20+1);
        System.out.println(20*46);
//        ArrayList<ArrayList<GoodList>>  goods = gf.queryLimit(20, 20);
//        for (ArrayList<GoodList> lis: goods) {
//            for (GoodList ls:lis) {
//                System.out.println(ls.getId());
//            }
//            System.out.println("\t");
//        }
//        int a = 999;
//        while (a != 0){
//            Random random = new Random();
//            int i1 = random.nextInt(11203)+5555;
//            int i2 = random.nextInt(13)+1;
//            int i3 = random.nextInt(9886)+200;
//            int i4 = random.nextInt(21000)+5000;
//            int i5 = random.nextInt(100)+5000;
//            int i6 = random.nextInt(400)+100;
//            int i7 = random.nextInt(500)+100;
////            System.out.println(i1);
////            for (int i = 0; i <i1 ; i++) {
////                for (int j = 1; j <12; j++) {
////            INSERT INTO `xe_goods` (`shop_id`, `cate_id`, `loca_id`, `main_title`, `sub_title`, `price`, `old_price`, `buy`, `goods_img`) VALUES
//// ('11236', '11206', '9886', '24000', 'Dior 迪奥 花漾甜心小姐女士淡香水......', 'Dior 迪奥 ', '445', '480', '31', './pic/goods/3.jpg')
////System.out.println
//("INSERT INTO `xe_goods` (`shop_id`, `cate_id`, `loca_id`, `main_title`, `sub_title`," +
//        " `price`, `old_price`, `buy`, `goods_img`) VALUES ("+i1+","+i3+","+i4+",'Dior 迪奥 花漾甜心小姐女士淡香水......','Dior 迪奥 ','"+i6+"', '"+i7+"',"+i5+",'./pic/goods/"+i2+".jpg');");
////                }
////            }
////            System.out.println(i1);
//            a--


    }
}
