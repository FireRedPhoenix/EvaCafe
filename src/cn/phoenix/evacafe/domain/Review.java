package cn.phoenix.evacafe.domain;

import cn.phoenix.evacafe.domain.base.CafeObj;

/**
 * Created by Phoenix on 2016/7/12.
 */
public class Review extends CafeObj {
    //评论的Id
    private int rId;
    //对该商品的评论
    private String rview;
    //商品的ID
    private int productId;
    //评论该商品的用户
    private String username;

    public int getrId() {
        return rId;
    }

    public void setrId(int rId) {
        this.rId = rId;
    }

    public String getRview() {
        return rview;
    }

    public void setRview(String rview) {
        this.rview = rview;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
