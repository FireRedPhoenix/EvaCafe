package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.Cart;
import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/10.
 */
@WebServlet(name = "CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        //若用户未登录，则重定向到login.jsp登录页面
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        int prodId = Integer.parseInt(request.getParameter("prodId"));

        //向Cart表中插入该项数据
        UserService userService = new UserService();
        if (userService.addToCart(username, prodId)) {
            //插入成功，查询购物车中的数据（图片地址，商品数量，商品名称，介绍，总价）
            List<Cart> carts = userService.findCartByUsername(username);
            System.out.println(carts.size());
            request.setAttribute("carts", carts);
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
            //response.sendRedirect(request.getContextPath() + "/cart.jsp");
            return;
        } else {
            //插入失败
            System.out.println("彩蛋：插入购物车失败 ");
        }

    }
}
