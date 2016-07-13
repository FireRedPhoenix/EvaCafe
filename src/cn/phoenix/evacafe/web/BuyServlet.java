package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Phoenix on 2016/7/12.
 */
@WebServlet(name = "BuyServlet")
public class BuyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String type = request.getParameter("type");
        String address = request.getParameter("address");

        UserService userService = new UserService();

        if (type.equals("buy")) {
//            int prodId = Integer.parseInt(request.getParameter("prodId"));
            if (request.getSession(false) == null || request.getSession().getAttribute("user") == null) {
                request.setAttribute("mreferer", request.getHeader("referer"));
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                return;
            }
            String username = ((User) request.getSession().getAttribute("user")).getUsername();
            int prodId = Integer.parseInt(request.getParameter("prodId"));
            int nums = Integer.parseInt(request.getParameter("nums"));

            if (nums <= 0) {
                //购买数量有误
                request.setAttribute("numMsg", "输入购买数量有误");
                request.getRequestDispatcher("/ProdDetailsServlet?prodId=" + prodId).forward(request, response);
                return;
            }
            if (address == null || address.equals("")) {
                request.setAttribute("addressMsg", "输入地址不能为空");
                request.getRequestDispatcher("/ProdDetailsServlet?prodId=" + prodId).forward(request, response);
                return;
            }

            userService.addOrder(username, prodId, nums, address);
            request.getRequestDispatcher("/OrderServlet").forward(request, response);
            return;
        }
    }
}
