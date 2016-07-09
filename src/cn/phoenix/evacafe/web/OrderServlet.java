package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Phoenix on 2016/7/9.
 */
@WebServlet(name = "OrderServlet")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            //如果session为空，说明用户未登录
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        } else {
            //说明用户已登录，跳转到我的订单页面
            User user = (User) session.getAttribute("user");

            UserService userService = new UserService();

            request.getRequestDispatcher("/jsp/myOrder.jsp");
            return;
        }
    }
}
