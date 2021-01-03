package com.work;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/api/news/info")
public class GetNewsInfo extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println(req.getParameter("id"));
        resp.getWriter().println(req.getParameter("id"));
        req.getRequestDispatcher("/WEB-INF/login.jsp")
                .forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println(req.getParameter("id"));
        req.getRequestDispatcher("/WEB-INF/login.jsp")
                .forward(req,resp);
    }
}
