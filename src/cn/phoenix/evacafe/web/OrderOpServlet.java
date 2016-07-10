package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.Orders;
import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/9.
 * 对订单进行操作
 */
@WebServlet(name = "OrderOpServlet")
public class OrderOpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //操作类型
        String type = request.getParameter("type");
        //单子号
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        //按照orderId查找该用户对应的订单

        if (request.getSession(false) == null || request.getSession(false).getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }

        UserService userService = new UserService();
        User user = (User) request.getSession(false).getAttribute("user");

        if (type.equals("cancel")) {
            //取消订单
            //设置该项订单状态为已取消（此时用户还未付款），刷新页面
            userService.orderCancel(orderId);
        } else if (type.equals("accept")) {
            //确认收货
            //设置该项订单状态为已完成（此时用户已经付款），刷新页面
            userService.orderFinish(orderId);
        } else if (type.equals("pay")) {
            //支付：设置该项订单状态为预备发货，修改用户的余额，刷新页面
            //查询用户余额和商品的总价
            Orders orders = userService.userOrder(orderId);
            //商品总价
            double totalMoney = orders.getPrice() * orders.getProductQuantity();
            //用户余额
            double rest = user.getRest();
            if (rest < totalMoney) {
                //余额不足
            } else {
                //用户支付
                userService.userPay(user.getUsername(), orderId, rest - totalMoney);
                user.setRest(rest - totalMoney);
                //更新session中保存的用户数据的余额
                request.getSession().setAttribute("user", user);
            }
        } else if (type.equals("reject")) {
            //退货
            //设置该项订单状态为已完成，修改用户的余额，刷新页面
            double rest = userService.userReject(user.getUsername(), orderId);
            //更新页面数据
            List<Orders> orderses = userService.userOrders(user.getUsername());
            if (orderses != null && orderses.size() > 0) {
                request.setAttribute("orders", orderses);
            }
            user.setRest(rest);
            request.getSession().setAttribute("user", user);
        } else if (type.equals("good")) {
            //好评，修改订单状态为已评价，修改对应商品的评价数
            userService.orderEvaluate(orderId, type);
        } else if (type.equals("bad")) {
            userService.orderEvaluate(orderId, type);
        } else if (type.equals("ordinary")) {
            userService.orderEvaluate(orderId, type);
        }
        //更新订单数据
        List<Orders> orderses = userService.userOrders(user.getUsername());
        if (orderses != null && orderses.size() > 0) {
            request.setAttribute("orders", orderses);
        }
        request.getRequestDispatcher("/jsp/myOrder.jsp").forward(request, response);
        return;
    }
}
