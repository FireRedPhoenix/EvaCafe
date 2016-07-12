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
        String type = request.getParameter("type");

        UserService userService = new UserService();

        if (type.equals("buy")) {
            int prodId = Integer.parseInt(request.getParameter("prodId"));
            if (request.getSession(false) == null || request.getSession().getAttribute("user") == null) {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            }
            String username = ((User) request.getSession().getAttribute("user")).getUsername();
            userService.addOrder(username, prodId);

            return;
        }
    }
}
