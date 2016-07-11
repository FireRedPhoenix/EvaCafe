package cn.phoenix.evacafe.service;

import cn.phoenix.evacafe.dao.UserDao;
import cn.phoenix.evacafe.domain.Cart;
import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.Product;
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
    public User userRegister(String username, String password, String phoneNumber, String email) {
        return userDao.addUser(username, password, phoneNumber, email);
    }

    /**
     * 查询用户所有的订单
     *
     * @param username 用户名
     * @return 返回用户所有的订单
     */
    public List<Orders> userOrders(String username) {
        return userDao.findOrdersByName(username);
    }

    /**
     * 通过主键寻找订单
     *
     * @param orderId
     * @return 返回对应的订单，若找不到则返回null
     */
    public Orders userOrder(int orderId) {
        return userDao.findOrderById(orderId);
    }

    /**
     * 用户为某份订单支付
     *
     * @param username
     * @param orderId
     * @param money
     */
    public void userPay(String username, int orderId, double money) {
        userDao.updateUserMoney(username, money);
        userDao.updateOrderStatus(orderId, "预备发货");
    }

    /**
     * 用户退货
     *
     * @param username 用户名
     * @param orderId  订单主键
     * @return 返回用户修改后的余额
     */
    public double userReject(String username, int orderId) {
        //设置订单状态已完成
        userDao.updateOrderStatus(orderId, "已完成");
        //获取对应的订单和用户，找不到则抛出异常
        Orders order = userDao.findOrderById(orderId);
        User user = userDao.findUserByName(username);
        if (order == null || user == null) {
            throw new RuntimeException("order or user is null.");
        }

        double totalMoney = order.getPrice() * order.getProductQuantity();
        double rest = user.getRest();

        userDao.updateUserMoney(username, rest + totalMoney);
        return rest + totalMoney;
    }

    /**
     * 对已完成的订单进行评价
     *
     * @param orderId
     * @param type
     */
    public void orderEvaluate(int orderId, String type) {
        userDao.updateOrderEvaluate(orderId);
        int prodId = userDao.findProdIdByOrderId(orderId);
        //更新物品的评价数
        if (type.equals("good")) {
            userDao.increProdEvaluation(prodId, "good");
        } else if (type.equals("bad")) {
            userDao.increProdEvaluation(prodId, "bad");
        } else if (type.equals("ordinary")) {
            userDao.increProdEvaluation(prodId, "ordinary");
        }
    }

    /**
     * 取消订单
     *
     * @param orderId
     */
    public void orderCancel(int orderId) {
        userDao.updateOrderStatus(orderId, "已取消");
    }

    /**
     * 订单已完成
     *
     * @param orderId
     */
    public void orderFinish(int orderId) {
        userDao.updateOrderStatus(orderId, "已完成");
    }

    /**
     * 通过prodId找到Product
     *
     * @param prodId
     * @return
     */
    public Product findProdById(int prodId) {
        return userDao.findProdById(prodId);
    }

    /**
     * 找出好评数前nums的产品
     *
     * @param nums
     * @return
     */
    public List<Product> findFavoriteProd(int nums) {
        return userDao.findFavoriteProd(nums);
    }

    /**
     * 将id为prodId的商品添加到用户username的购物车中
     * @param username
     * @param prodId
     * @return 若添加成功则返回true，否则返回false
     */
    public boolean addToCart(String username, int prodId) {
        return userDao.addToCart(username,prodId);
    }

    public List<Cart> findCartByUsername(String username) {
        return userDao.findCartByUsername(username);
    }
}
