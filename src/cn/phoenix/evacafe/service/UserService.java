package cn.phoenix.evacafe.service;

import cn.phoenix.evacafe.dao.UserDao;
import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.factory.DaoFactory;

import java.util.List;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class UserService {
    UserDao userDao = DaoFactory.INSTANCE.getDao();

    /**
     * 用户登录，若登录成功，则返回true，否则返回false
     *
     * @param username 用户名
     * @param password 密码
     * @return 登录成功则返回true，否则返回false
     */
    public User userLogin(String username, String password) {
        return userDao.findUserByNAndP(username, password);
    }

    /**
     * 添加新用户
     *
     * @param username    用户名
     * @param password    密码
     * @param phoneNumber 电话
     * @return 返回注册的用户对象，若用户名已注册，则返回null
     */
    public User userRegister(String username, String password, String phoneNumber) {
        return userDao.addUser(username, password, phoneNumber);
    }

    public List<Orders> userOrders(String username) {
        return userDao.findOrdersByName(username);
    }
}
