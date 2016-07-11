package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.Product;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Phoenix on 2016/7/11.
 */
@WebServlet(name = "SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String inputContent = request.getParameter("search");
        //利用inputContent里面的关键字进行模糊查询，得到搜索后的结果
        UserService userService = new UserService();
        List<Product> products = userService.searchKeyword(inputContent);
        if (products != null) {
            for (Product product : products) {
                System.out.println(product.getProductName());
            }
            request.setAttribute("searchResult", products);
        }
        request.getRequestDispatcher("/searchResult.jsp").forward(request, response);
    }
}
