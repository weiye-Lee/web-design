package com.work;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        // 服务器内部获取数据返回给前端
        request.getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request,response);

        // 请求重定向，是让你向哪里重新发送请求
//        response.sendRedirect("/index.jsp");
    }

    public void destroy() {
    }
}