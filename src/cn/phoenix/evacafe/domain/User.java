package cn.phoenix.evacafe.domain;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class User {
    // 用户名,主键
    private String username;
    // 密码
    private String password;
    // 余额
    private double rest;
    // 已购买物品次数
    private int buy_times;
    // 待收款的商品数
    private int wait_to_accept;
    // 待支付的商品数
    private int wait_to_pay;
    // 手机号码
    private String phoneNumber;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getRest() {
        return rest;
    }

    public void setRest(double rest) {
        this.rest = rest;
    }

    public int getBuy_times() {
        return buy_times;
    }

    public void setBuy_times(int buy_times) {
        this.buy_times = buy_times;
    }

    public int getWait_to_accept() {
        return wait_to_accept;
    }

    public void setWait_to_accept(int wait_to_accept) {
        this.wait_to_accept = wait_to_accept;
    }

    public int getWait_to_pay() {
        return wait_to_pay;
    }

    public void setWait_to_pay(int wait_to_pay) {
        this.wait_to_pay = wait_to_pay;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
