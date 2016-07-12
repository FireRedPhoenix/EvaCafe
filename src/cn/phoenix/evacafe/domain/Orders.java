package cn.phoenix.evacafe.domain;

import cn.phoenix.evacafe.domain.base.CafeObj;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Orders extends CafeObj {
    //用户名，外键
    private String username;
    //商品编号
    private int productId;
    //订单编号
    private int orderId;
    /**
     * 状态
     * <p/>
     * 预备发货、运送中、准备收货、已完成、已取消
     */
    private String status;
    //商品订货数量
    private int productQuantity;
    //是否已评价
    private boolean isEvaluated;
    //下单时间
    private String time;
    //接收人地址
    private String address;
    //商品名称
    private String productName;
    //商品单价
    private double price;
    //商品在数据库中存储的第一张图片的路径
    private String path;
    //该订单是否已付款
    private boolean isPaid;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean getIsEvaluated() {
        return isEvaluated;
    }

    public void setIsEvaluated(boolean isEvaluated) {
        this.isEvaluated = isEvaluated;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public boolean getIsPaid() {
        return isPaid;
    }

    public void setIsPaid(boolean isPaid) {
        this.isPaid = isPaid;
    }
}
