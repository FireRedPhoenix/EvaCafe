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
        //获取按何种方式搜索
        String searchType = request.getParameter("searchType");
        //获取搜索关键字
        String keyword = request.getParameter("search");
        //获取搜索页数
        int page = Integer.parseInt(request.getParameter("page"));
        //利用keyword里面的关键字进行模糊查询，得到搜索后的结果
        UserService userService = new UserService();

        if (searchType.equals("keyword")) {

            //先查询获取结果的总行数
            int rows = userService.searchKeywordRows(keyword);
            //根据行数判断是否进行分页查询
            List<Product> products = null;
            if (rows == 0) {
                //如果没有任何数据，则返回主页面，并提示
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            }
            if (rows > 9) {
                //进行分页查询，并根据请求的page参数进行分页查询
                products = userService.searchKeyword(keyword, page * 9, 9);
            } else {
                //全部查询
                products = userService.searchKeyword(keyword);
            }
            System.out.println("popularProd nums:" + products.size());

            if (products == null) {
                //未查询到任何数据，则返回主页面，并做出提示
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            }

            //搜索最新三件产品存入requst域
            List<Product> newProds = userService.findNewProds(3);
            request.setAttribute("newProds", newProds);

            //将商品总页数和当前页数存入request域
            request.setAttribute("search", keyword);
            request.setAttribute("searchResult", products);
            request.setAttribute("totalPages", (rows - 1) / 9 + 1);
            request.setAttribute("currentPage", page);
            request.getRequestDispatcher("/searchResult.jsp").forward(request, response);
            return;
        } else if (searchType.equals("popular")) {
            //按受欢迎度分
            //因为最受欢迎商品在用户进入首页面时已经被存入了session域中，此处可以直接复用
            List<Product> popularProd = userService.findFavoriteProd(9);
            if (popularProd == null) {
                //未查询到任何数据，则返回主页面，并做出提示
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            }
            //搜索最新三件产品存入requst域
            List<Product> newProds = userService.findNewProds(3);
            request.setAttribute("newProds", newProds);

            //将商品总页数和当前页数存入request域
//            request.setAttribute("search", keyword);
            request.setAttribute("searchResult", popularProd);
            request.setAttribute("totalPages", 1);
            request.setAttribute("currentPage", 0);
            request.getRequestDispatcher("/searchResult.jsp").forward(request, response);
            return;
        }
    }
}
