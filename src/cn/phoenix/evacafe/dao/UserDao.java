package cn.phoenix.evacafe.dao;

import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.User;

import java.util.List;

/**
 * Created by Phoenix on 2016/7/8.
 */
public interface UserDao {
    /**
     * 通过用户名和密码搜索用户数据
     *
     * @param username
     * @param password
     * @return 返回用户对象，如果找不到则返回null
     */
    public User findUserByNAndP(String username, String password);

    /**
     * 通过用户名搜索用户数据
     *
     * @param username
     * @return 返回用户对象，如果找不到则返回null
     */
    public User findUserByName(String username);

    /**
     * 注册一个用户
     *
     * @param username    用户名
     * @param password    密码
     * @param phoneNumber 手机号码
     * @return 返回注册完成的用户对象，如果注册失败则返回空
     */
    public User addUser(String username, String password, String phoneNumber);

    /**
     * 通过用户名寻找用户的订单
     * @param username
     * @return 返回订单列表
     */
    public List<Orders> findOrdersByName(String username);

}
