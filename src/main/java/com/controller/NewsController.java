package com.controller;

import com.Service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/newsInfo")
public class NewsController extends HttpServlet {
    private NewsService newsService = new NewsService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("newsInfo",newsService.findById(Integer.parseInt(req.getParameter("id"))));
        req.getRequestDispatcher("/WEB-INF/news-info.jsp")
                .forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        add from admin

    }
}
