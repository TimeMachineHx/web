package com.itheima.web.controller;

import com.itheima.domain.User;
import com.itheima.service.UserService;
import com.itheima.service.impl.UserServiceImpl;
import com.itheima.utils.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @program: untitled3
 * @description:
 * @author: HongXin
 * @create: 2021-07-11 15:02
 */

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
    UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if("login".equals(action)){
            login(req,resp);
        }
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        User user = JsonUtil.req2Bean(req, User.class);
        User login = userService.login(user);
        if(login != null){
           req.getSession().setAttribute("user",login);
           resp.getWriter().write("true");
        }else {
            resp.getWriter().write("false");
        }
    }
}
