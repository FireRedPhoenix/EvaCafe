package cn.phoenix.evacafe.domain;

import cn.phoenix.evacafe.domain.base.CafeObj;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class User extends CafeObj {
    //邮箱
    private String email;
    // 用户名,主键
    private String username;
    // 密码
    private String password;
    // 余额
    private double rest;
    // 已购买物品次数
    private int buyTimes;
    // 待接收的商品数
    private int waitToAccept;
    // 待支付的商品数
    private int waitToPay;
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

    public int getBuyTimes() {
        return buyTimes;
    }

    public void setBuyTimes(int buyTimes) {
        this.buyTimes = buyTimes;
    }

    public int getWaitToAccept() {
        return waitToAccept;
    }

    public void setWaitToAccept(int waitToAccept) {
        this.waitToAccept = waitToAccept;
    }

    public int getWaitToPay() {
        return waitToPay;
    }

    public void setWaitToPay(int waitToPay) {
        this.waitToPay = waitToPay;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
