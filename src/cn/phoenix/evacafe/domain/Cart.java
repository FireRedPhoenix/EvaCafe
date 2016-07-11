package cn.phoenix.evacafe.domain;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Cart {
    //主键
//    private int cartId;
    //用户名，外键
//    private String username;
    //购物车商品的数量
//    private int nums;

    //商品编号
    private int productId;
    //商品首张图片的路径
    private String path;
    //购物车商品的数量
    private int nums;
    //商品的名称
    private String productName;
    //商品的介绍
    private String introduction;
    //商品的总价
    private double price;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getNums() {
        return nums;
    }

    public void setNums(int nums) {
        this.nums = nums;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
