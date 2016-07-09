package cn.phoenix.evacafe.web;

import cn.phoenix.evacafe.domain.User;
import cn.phoenix.evacafe.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by Phoenix on 2016/7/9.
 */
@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Iterator<Map.Entry<String, String[]>> iterator = request.getParameterMap().entrySet().iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next().getKey() + ":" + iterator.next().getValue());
        }
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String phoneNumber = request.getParameter("phoneNumber");

        if (!password.equals(password2)) {
            request.setAttribute("msg", "输入密码不一致");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else {
            UserService userService = new UserService();
            User user = userService.userRegister(username, password, phoneNumber);
            if (user == null) {
                request.setAttribute("msg", "用户名已存在");
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            } else {
                request.getSession().setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }
        }


    }
}
