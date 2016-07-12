package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.Inet4Address;

/**
 * Created by Phoenix on 2016/7/13.
 */
@WebServlet(name = "ReviewServlet")
public class ReviewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String reviewMsg = request.getParameter("reviewMsg");
        if (request.getSession(false) == null || request.getSession().getAttribute("user") == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        } else {
            if (reviewMsg == null || reviewMsg.equals("")) {
                //若输入的消息为空
                request.setAttribute("reviewMsg", "消息输入不能为空");
                request.getRequestDispatcher("/ProdDetailsServlet").forward(request, response);
                return;
            }
            int prodId = Integer.parseInt(request.getParameter("prodId"));
            String username = ((User) request.getSession().getAttribute("user")).getUsername();
            UserService userService = new UserService();
            userService.userReview(username, prodId, reviewMsg);
            request.getRequestDispatcher("/ProdDetailsServlet").forward(request, response);
        }
    }
}
