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
import java.util.Iterator;
import java.util.Map;

/**
 * Created by Phoenix on 2016/7/8.
 */
@WebServlet(name = "LoginServlet")
public class LogInOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String type = request.getParameter("type");

        UserService userService = new UserService();

        if (type.equals("enterLogin")) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        } else if (type.equals("login")) {

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = userService.userLogin(username, password);
            if (user != null) {
                //登录成功，返回index界面
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return;
            } else {
                //登录失败，返回Login界面
                request.setAttribute("msg", "用户名或密码错误");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                return;
            }
        } else if (type.equals("logout")) {
            //退出登录
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else if (type.equals("register")) {
            response.sendRedirect(request.getContextPath() + "/register.jsp");
        }
    }
}
