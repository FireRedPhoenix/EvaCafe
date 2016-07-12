package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.Product;
import cn.phoenix.evacafe.domain.Review;
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
 */
@WebServlet(name = "ProdDetailsServlet")
public class ProdDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String prodId = request.getParameter("prodId");

        UserService userService = new UserService();
        //根据id获取商品对象
        Product prod = userService.findProdById(Integer.parseInt(prodId));
        //通过商品的id获得顾客对商品的评论
        List<Review> reviews = userService.findReviewByProdId(prod.getProductId());
        request.setAttribute("reviews", reviews);
        request.setAttribute("product", prod);
        request.getRequestDispatcher("/prodDetails.jsp").forward(request, response);
    }
}
