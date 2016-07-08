package cn.phoenix.evacafe.domain;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Cart {
    //用户名，外键
    private String username;
    //商品编号
    private int product_id;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
}
