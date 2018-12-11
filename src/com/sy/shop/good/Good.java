package com.sy.shop.good;

/**
 * @Author: Administrator
 * @Date: 2018/12/7 9:50
 * @Version 1.0
 */
public class Good {
    private int id;
    private int shop_id;
    private int cate_id;
    private int loca_id;
    private String main_title;
    private String sub_title;
    private double price;
    private double old_price;
    private int buy;
    private String goods_img;

    public Good() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getShop_id() {
        return shop_id;
    }

    public void setShop_id(int shop_id) {
        this.shop_id = shop_id;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public int getLoca_id() {
        return loca_id;
    }

    public void setLoca_id(int loca_id) {
        this.loca_id = loca_id;
    }

    public String getMain_title() {
        return main_title;
    }

    public void setMain_title(String main_title) {
        this.main_title = main_title;
    }

    public String getSub_title() {
        return sub_title;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getOld_price() {
        return old_price;
    }

    public void setOld_price(double old_price) {
        this.old_price = old_price;
    }

    public int getBuy() {
        return buy;
    }

    public void setBuy(int buy) {
        this.buy = buy;
    }

    public String getGoods_img() {
        return goods_img;
    }

    public void setGoods_img(String goods_img) {
        this.goods_img = goods_img;
    }

    @Override
    public String toString() {
        return "GoodList{" +
                "id=" + id +
                ", shop_id=" + shop_id +
                ", cate_id=" + cate_id +
                ", loca_id=" + loca_id +
                ", main_title='" + main_title + '\'' +
                ", sub_title='" + sub_title + '\'' +
                ", price=" + price +
                ", old_price=" + old_price +
                ", buy=" + buy +
                ", goods_img='" + goods_img + '\'' +
                '}';
    }
}
