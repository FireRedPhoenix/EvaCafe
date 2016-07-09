package cn.phoenix.evacafe.dao;

import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.util.ConfigUtils;
import cn.phoenix.evacafe.util.DaoUtils;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/8.
 */
public class MySqlUserDao implements UserDao {

    static {
        try {
            Class.forName(ConfigUtils.getDriverName());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test() {
        findOrdersByName("王成");
        System.out.println("sssss");
    }

    @Override
    public User findUserByNAndP(String username, String password) {
        User user = findUserByName(username);
        if (user == null) {
            return null;
        } else if (user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public User findUserByName(String username) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement("select * from user where username=?");
            statement.setString(1, username);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                User user = new User();
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setRest(resultSet.getDouble("rest"));
                user.setBuyTimes(resultSet.getInt("buyTimes"));
                user.setWaitToAccept(resultSet.getInt("waitToAccept"));
                user.setWaitToPay(resultSet.getInt("waitToPay"));
                user.setPhoneNumber(resultSet.getString("phoneNumber"));
                return user;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public User addUser(String username, String password, String phoneNumber) {
        String insertSql = "insert into user values (?,?,?,?,?,?,?)";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(insertSql);
            //用户名
            statement.setString(1, username);
            //密码
            statement.setString(2, password);
            //余额
            statement.setDouble(3, 0f);
            //购买物品次数
            statement.setInt(4, 0);
            //待收货次数
            statement.setInt(5, 0);
            //待支付次数
            statement.setInt(6, 0);
            //电话号码
            statement.setString(7, phoneNumber);
            int rows = statement.executeUpdate();
            if (rows == 0) {
                return null;
            } else {
                User user = new User();
                user.setUsername(username);
                user.setPassword(password);
                user.setPhoneNumber(phoneNumber);
                user.setBuyTimes(0);
                user.setWaitToPay(0);
                user.setWaitToAccept(0);
                user.setRest(0);
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public List<Orders> findOrdersByName(String username) {
        String selectSql = "select Product.productName,Orders.productId,orderId,status,productQuantity,isEvaluated,time,address,Product.price,Pics.path from Orders,Pics,Product where Orders.username=? and Orders.productId = Product.productId";

        Connection connection = null;
        PreparedStatement stat = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            stat = connection.prepareStatement(selectSql);
            stat.setString(1, username);
            resultSet = stat.executeQuery();
            if (!resultSet.isAfterLast()) {
                List<Orders> orderses = new ArrayList<Orders>();
                Orders orders = null;
                while (resultSet.next()) {
                    orders = new Orders();
                    orders.setAddress(resultSet.getString("address"));
                    orders.setEvaluated(resultSet.getByte("isEvaluated") != 0);
                    orders.setOrderId(resultSet.getInt("orderId"));
                    orders.setPath(resultSet.getString("path"));
                    orders.setPrice(resultSet.getDouble("price"));
                    orders.setProductId(resultSet.getInt("productId"));
                    orders.setProductName(resultSet.getString("productName"));
                    orders.setProductQuantity(resultSet.getInt("productQuantity"));
                    orders.setStatus(resultSet.getString("status"));
                    orders.setUsername(username);
                    orders.setTime(resultSet.getString("time"));
                    orderses.add(orders);
                }
                return orderses;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, stat, resultSet);
        }
    }
}
