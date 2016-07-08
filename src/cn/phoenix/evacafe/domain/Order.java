package cn.phoenix.evacafe.domain;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class Order {
    //用户名，外键
    private String username;
    //商品编号
    private int product_id;
    //订单编号
    private int order_id;
    /**
     * 状态
     * <p/>
     * 预备发货、运送中、准备收货、已完成
     */
    private String status;
    //商品订货数量
    private int product_quantity;
    //是否已评价
    private boolean isEvaluated;
    //下单时间
    private String time;
    //接收人地址
    private String address;

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

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getProduct_quantity() {
        return product_quantity;
    }

    public void setProduct_quantity(int product_quantity) {
        this.product_quantity = product_quantity;
    }

    public boolean isEvaluated() {
        return isEvaluated;
    }

    public void setEvaluated(boolean isEvaluated) {
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
}
