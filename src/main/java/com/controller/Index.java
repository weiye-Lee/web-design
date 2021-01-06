package com.controller;

import com.Service.NewsService;
import com.Unit.DataSourceUtils;
import com.entity.News;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/api/index")
public class Index extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String sql = "SELECT * FROM NEWS WHERE show_able = 0 limit 6";
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql);
                ResultSet rs = st.executeQuery()) {
            List<News> newsList = new ArrayList<>();
            while (rs.next()) {
                News news = new News();
                news.setId(Integer.parseInt(rs.getString("id")));
                news.setContent(rs.getString("content"));
                news.setHomePhoto(rs.getString("home_photo"));
                news.setTitle(rs.getString("title"));
//                news.setTime(LocalDateTime.parse(rs.getString("time")));
                news.setShowAble(Integer.parseInt(rs.getString("show_able")));
                news.setLevel(Integer.parseInt(rs.getString("level")));
                newsList.add(news);
            }
            request.setAttribute("newsList",newsList);
            System.out.println(newsList.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 服务器内部获取数据返回给前端
        request.getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request, response);

        // 请求重定向，是让你向哪里重新发送请求
        // response.sendRedirect("/index.jsp");
    }

    public void destroy() {
    }
}