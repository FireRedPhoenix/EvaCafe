package cn.phoenix.evacafe.dao;

import cn.phoenix.evacafe.domain.*;

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
    public User addUser(String username, String password, String phoneNumber, String email);

    /**
     * 通过用户名寻找用户的订单
     *
     * @param username
     * @return 返回订单列表
     */
    public List<Orders> findOrdersByName(String username);

    /**
     * 通过订单id查询对于的订单
     *
     * @param orderId
     * @return
     */
    public Orders findOrderById(int orderId);

    /**
     * 更新用户的余额
     *
     * @param username   用户名
     * @param totalMoney 用户余额将要减去的金钱
     */
    public void updateUserMoney(String username, double totalMoney);

    /**
     * 更新订单的状态
     *
     * @param orderId 订单的主键
     * @param status  更新后的状态
     */
    public void updateOrderStatus(int orderId, String status);

    /**
     * 将订单的是否评价状态更新为以评价
     */
    public void updateOrderEvaluate(int orderId);

    /**
     * 更新商品的评价数量
     */
    public void increProdEvaluation(int prodId, String type);

    /**
     * 找到订单对于的商品的ID
     *
     * @param orderId
     * @return
     */
    public int findProdIdByOrderId(int orderId);

    /**
     * 通过产品的id寻找Product
     *
     * @param prodId
     * @return
     */
    Product findProdById(int prodId);

    /**
     * 找出好评数前nums的产品
     *
     * @param nums
     * @return 返回查询到的产品
     */
    List<Product> findFavoriteProd(int nums);

    /**
     * 将id为prodId的商品添加到用户username的购物车中
     *
     * @param username
     * @param prodId
     * @return 若添加成功则返回true，否则返回false
     */
    boolean addToCart(String username, int prodId);

    /**
     * 通过用户名来寻找该用户的购物车商品
     *
     * @param username
     * @return
     */
    List<Cart> findCartByUsername(String username);

    /**
     * 删除购物车中商品id为prodId的商品
     *
     * @param prodId
     */
    void deleteCart(int prodId);

    /**
     * 通过关键字对商品进行模糊搜索
     *
     * @param keyword
     * @return
     */
    List<Product> searchKeyword(String keyword);

    /**
     * 通过关键字对商品进行模糊分页搜索
     *
     * @param keyword
     * @return
     */
    List<Product> searchKeyword(String keyword, int startIndex, int length);

    int searchKeywordRows(String keyword);

    /**
     * 搜索最新的前rows行商品
     *
     * @param rows
     * @return
     */
    List<Product> findNewProds(int rows);

    /**
     * 添加订单
     *
     * @param username
     * @param prodId
     * @param nums
     * @param address
     */
    void addOrder(String username, int prodId, int nums, String address);

    /**
     * 通过商品的Id获得该商品的评论
     * @param productId
     * @return 返回对该商品的所有评论
     */
    List<Review> findReviewByProdId(int productId);

    /**
     * 向review表中插入用户对商品的评论
     * @param username
     * @param prodId
     * @param reviewMsg
     */
    void userReview(String username, int prodId, String reviewMsg);
}
