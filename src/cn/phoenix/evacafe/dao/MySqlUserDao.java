package cn.phoenix.evacafe.dao;

import cn.phoenix.evacafe.domain.Cart;
import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.Product;
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

    @Override
    public void updateUserMoney(String username, double totalMoney) {
        String updateSql = "update User set rest=? where username=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setDouble(1, totalMoney);
            statement.setString(2, username);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void updateOrderStatus(int orderId, String status) {
        String updateSql = "update Orders set status=?,isPaid = ? where orderId=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setString(1, status);
            statement.setInt(2, 1);
            statement.setInt(3, orderId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void updateOrderEvaluate(int orderId) {
        String updateSql = "update Orders set isEvaluated = 1 where orderId=?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setInt(1, orderId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void increProdEvaluation(int prodId, String type) {

        String querySql = "select " + type + " from Product where productId = ?";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        PreparedStatement statement1 = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(querySql);
            statement.setInt(1, prodId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int times = resultSet.getInt(type);
                times++;
                statement1 = connection.prepareStatement("update Product set " + type + "=? where productId=?");
                statement1.setInt(1, times);
                statement1.setInt(2, prodId);
                statement1.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(null, statement, resultSet);
            DaoUtils.close(connection, statement1, null);
        }
    }

    @Override
    public int findProdIdByOrderId(int orderId) {
        String updateSql = "select Product.ProductId from Product,Orders where Orders.orderId = ? and orders.productId = product.productId";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(updateSql);
            statement.setInt(1, orderId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("ProductId");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
        return 0;
    }

    private Product createProd(ResultSet resultSet) throws SQLException {
        Product prod = new Product();
        prod.setProductId(resultSet.getInt("productId"));
        prod.setProductName(resultSet.getString("productName"));
        prod.setType(resultSet.getString("type"));
        prod.setBrand(resultSet.getString("brand"));
        prod.setPackaging(resultSet.getString("packaging"));
        prod.setLevel(resultSet.getString("lv"));
        prod.setIntroduction(resultSet.getString("introduction"));
        prod.setProducingArea(resultSet.getString("producingArea"));
        prod.setQuantity(resultSet.getInt("quantity"));
        prod.setPrice(resultSet.getDouble("price"));
        prod.setTast(resultSet.getString("tast"));
        prod.setCupSize(resultSet.getString("cupSize"));
        prod.setConcentrations(resultSet.getString("concentrations"));
        prod.setMaterial(resultSet.getString("material"));
        prod.setWeight(resultSet.getDouble("weight"));
        prod.setCapacity(resultSet.getDouble("capacity"));
        prod.setSugar(resultSet.getString("sugar"));
        prod.setContainsMilk(resultSet.getInt("containsMilk") != 0);
        prod.setSpice(resultSet.getString("spice"));
        prod.setMakerType(resultSet.getString("makerType"));
        prod.setPower(resultSet.getInt("power"));
        prod.setGood(resultSet.getInt("good"));
        prod.setOrdinary(resultSet.getInt("ordinary"));
        prod.setBad(resultSet.getInt("bad"));

        List<String> paths = new ArrayList<String>();
        paths.add(resultSet.getString("path"));
        prod.setPaths(paths);
        return prod;
    }


    @Override
    public List<Product> findFavoriteProd(int nums) {
        String selectProds = "SELECT * FROM product,(SELECT * FROM pics GROUP BY productId) AS ppics where product.productId = ppics.productId ORDER BY good DESC LIMIT ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(selectProds);
            statement.setInt(1, nums);
            resultSet = statement.executeQuery();
            List<Product> prods = new ArrayList<Product>();
            while (resultSet.next()) {
                Product prod = createProd(resultSet);
                prods.add(prod);
            }
            return prods;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public boolean addToCart(String username, int prodId) {
        String querySql = "SELECT * FROM cart WHERE username = ? AND productId = ?";
        String addSql = "INSERT INTO cart VALUES(NULL,?,?,1);";
        String updateSql = "UPDATE cart SET nums=? WHERE productId=?";
        Connection connection = null;
        PreparedStatement statement = null;
        PreparedStatement statement1 = null;
        PreparedStatement statement2 = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(querySql);
            statement.setString(1, username);
            statement.setInt(2, prodId);
            resultSet = statement.executeQuery();
            if (!resultSet.next()) {
                //该商品尚未添加购物车
                statement1 = connection.prepareStatement(addSql);
                statement1.setString(1, username);
                statement1.setInt(2, prodId);
                int i = statement1.executeUpdate();

                if (i > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                //该商品已经添加购物车，则将购物车中的数量+1
                //获取商品的原有数量nums
                int nums = resultSet.getInt("nums");
                nums++;
                statement2 = connection.prepareStatement(updateSql);
                statement2.setInt(1, nums);
                statement2.setInt(2, prodId);
                int rows = statement2.executeUpdate();
                if (rows > 0) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(null, statement, resultSet);
            DaoUtils.close(connection, statement1, null);
            DaoUtils.close(null, statement2, null);
        }
    }

    @Override
    public List<Cart> findCartByUsername(String username) {
        String selectSql = "SELECT ppics.path,cart.nums,product.productName,product.productId,product.introduction,product.price " +
                "FROM (SELECT * FROM pics GROUP BY productId) AS ppics,cart,product " +
                "WHERE ppics.productId = product.productId AND product.productId = cart.productId AND cart.username = ?";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(selectSql);
            statement.setString(1, username);
            resultSet = statement.executeQuery();
            List<Cart> carts = new ArrayList<Cart>();
            while (resultSet.next()) {
                Cart cart = new Cart();
                cart.setProductName(resultSet.getString("productName"));
                cart.setNums(resultSet.getInt("nums"));
                cart.setPrice(resultSet.getInt("nums") * resultSet.getDouble("price"));
                cart.setIntroduction(resultSet.getString("introduction"));
                cart.setPath(resultSet.getString("path"));
                cart.setProductId(resultSet.getInt("productId"));
                carts.add(cart);
            }
            return carts;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void deleteCart(int prodId) {
        String deleteSql = "DELETE FROM cart WHERE cart.productId = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(deleteSql);
            statement.setInt(1, prodId);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, null);
        }

    }

    @Override
    public List<Product> searchKeyword(String keyword) {
        String searchSql = "SELECT * FROM (SELECT * FROM product WHERE productName like ? OR brand like ? OR tast like ? UNION SELECT * FROM product WHERE lv = ? OR type = ? OR producingArea = ?) AS pprod,pics WHERE pprod.productId = pics.productId GROUP BY pprod.productId";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(searchSql);

            statement.setString(1, "%" + keyword + "%");
            statement.setString(2, "%" + keyword + "%");
            statement.setString(3, "%" + keyword + "%");
            statement.setString(4, keyword);
            statement.setString(5, keyword);
            statement.setString(6, keyword);

            resultSet = statement.executeQuery();
            List<Product> prods = new ArrayList<Product>();
            while (resultSet.next()) {
                Product prod = createProd(resultSet);
                prods.add(prod);
            }
            if (prods.size() == 0) {
                return null;
            } else {
                return prods;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public List<Product> searchKeyword(String keyword, int startIndex, int length) {
        String searchSql = "SELECT * FROM (SELECT * FROM product WHERE productName like ? OR brand like ? OR tast like ? UNION SELECT * FROM product WHERE lv = ? OR type = ? OR producingArea = ?) AS pprod,pics WHERE pprod.productId = pics.productId GROUP BY pprod.productId LIMIT ?,?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(searchSql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            statement.setString(1, "%" + keyword + "%");
            statement.setString(2, "%" + keyword + "%");
            statement.setString(3, "%" + keyword + "%");
            statement.setString(4, keyword);
            statement.setString(5, keyword);
            statement.setString(6, keyword);
            statement.setInt(7, startIndex);
            statement.setInt(8, length);

            resultSet = statement.executeQuery();
            List<Product> prods = new ArrayList<Product>();
            while (resultSet.next()) {
                Product prod = createProd(resultSet);
                prods.add(prod);
            }
            if (prods.size() == 0) {
                return null;
            } else {
                return prods;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public int searchKeywordRows(String keyword) {
        String searchSql = "SELECT COUNT(DISTINCT pprod.productId) FROM (SELECT * FROM product WHERE productName like ? OR brand like ? OR tast like ? UNION SELECT * FROM product WHERE lv = ? OR type = ? OR producingArea = ?) AS pprod,pics WHERE pprod.productId = pics.productId";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(searchSql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            statement.setString(1, "%" + keyword + "%");
            statement.setString(2, "%" + keyword + "%");
            statement.setString(3, "%" + keyword + "%");
            statement.setString(4, keyword);
            statement.setString(5, keyword);
            statement.setString(6, keyword);

            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            } else {
                return 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Test
    public void test() {
        List<Product> s = findNewProds(3);
        //int sss = searchKeywordRows("咖啡");
        System.out.println("ss");
    }

    @Override
    public List<Product> findNewProds(int rows) {
        String searchSql = "SELECT * FROM product,(SELECT * FROM pics GROUP BY productId) AS ppics WHERE product.productId = ppics.productId ORDER BY ppics.productId DESC LIMIT ?";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(searchSql);
            statement.setInt(1, rows);
            resultSet = statement.executeQuery();

            List<Product> prods = new ArrayList<Product>();
            while (resultSet.next()) {
                Product prod = createProd(resultSet);
                prods.add(prod);
            }
            return prods;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
    }

    @Override
    public void addOrder(String username, int prodId) {
//        INSERT INTO orders values (NULL,'王成',7,'预备发货',1,0,'2016-7-10 10:33','武汉',0)
        String querySql = "SELECT * FROM orders WHERE username=? AND prodId=?";

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
/*
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement(querySql);
            statement.setInt(1, rows);
            resultSet = statement.executeQuery();

            List<Product> prods = new ArrayList<Product>();
            while (resultSet.next()) {
                Product prod = createProd(resultSet);
                prods.add(prod);
            }
            return prods;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, statement, resultSet);
        }
*/

    }

    @Override
    public Product findProdById(int prodId) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            statement = connection.prepareStatement("select * from Product,Pics where product.productId = ? and product.productId = pics.productId");
            statement.setInt(1, prodId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                Product prod = createProd(resultSet);
                List<String> paths = prod.getPaths();
                while (resultSet.next()) {
                    paths.add(resultSet.getString("path"));
                }
                return prod;
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
                user.setEmail(resultSet.getString("email"));
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
    public User addUser(String username, String password, String phoneNumber, String email) {
        String insertSql = "insert into user values (?,?,?,?,?,?,?,?)";
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
            //邮箱
            statement.setString(8, email);
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
        String selectSql = "select Orders.isPaid,Product.productName,Orders.productId,orderId,status,productQuantity,isEvaluated,time,address,Product.price,Pics.path from Orders,Pics,Product where Orders.username=? and Orders.productId = Product.productId and product.productId = pics.productId";

        Connection connection = null;
        PreparedStatement stat = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            stat = connection.prepareStatement(selectSql);
            stat.setString(1, username);
            resultSet = stat.executeQuery();

            List<Orders> orderses = new ArrayList<Orders>();
            Orders orders = null;
            int productId = -1;
            while (resultSet.next()) {
                if (resultSet.getInt("productId") != productId) {
                    productId = resultSet.getInt("productId");
                    orders = new Orders();
                    orders.setAddress(resultSet.getString("address"));
                    orders.setIsEvaluated(resultSet.getByte("isEvaluated") != 0);
                    orders.setOrderId(resultSet.getInt("orderId"));
                    orders.setPath(resultSet.getString("path"));
                    orders.setPrice(resultSet.getDouble("price"));
                    orders.setProductId(resultSet.getInt("productId"));
                    orders.setProductName(resultSet.getString("productName"));
                    orders.setProductQuantity(resultSet.getInt("productQuantity"));
                    orders.setStatus(resultSet.getString("status"));
                    orders.setUsername(username);
                    orders.setTime(resultSet.getString("time"));
                    orders.setIsPaid(resultSet.getByte("isPaid") != 0);
                    orderses.add(orders);
                }
            }
            return orderses;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DaoUtils.close(connection, stat, resultSet);
        }
    }

    @Override
    public Orders findOrderById(int orderId) {
        String selectSql = "select Orders.isPaid,Product.productName,Orders.productId,orderId,status,productQuantity,isEvaluated,time,address,Product.price,Pics.path from Orders,Pics,Product where Orders.orderId=? and Orders.productId = Product.productId and product.productId = pics.productId";

        Connection connection = null;
        PreparedStatement stat = null;
        ResultSet resultSet = null;

        try {
            connection = DriverManager.getConnection(ConfigUtils.getConnecitonUrl(), ConfigUtils.getUsername(), ConfigUtils.getPassword());
            stat = connection.prepareStatement(selectSql);
            stat.setInt(1, orderId);
            resultSet = stat.executeQuery();
            if (resultSet.next()) {
                Orders orders = null;
                orders = new Orders();
                orders.setAddress(resultSet.getString("address"));
                orders.setIsEvaluated(resultSet.getByte("isEvaluated") != 0);
                orders.setOrderId(resultSet.getInt("orderId"));
                orders.setPath(resultSet.getString("path"));
                orders.setPrice(resultSet.getDouble("price"));
                orders.setProductId(resultSet.getInt("productId"));
                orders.setProductName(resultSet.getString("productName"));
                orders.setProductQuantity(resultSet.getInt("productQuantity"));
                orders.setStatus(resultSet.getString("status"));
                //orders.setUsername(username);
                orders.setTime(resultSet.getString("time"));
                orders.setIsPaid(resultSet.getByte("isPaid") != 0);
                return orders;
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
