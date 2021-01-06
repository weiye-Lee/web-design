package com.Service;

import com.Unit.DataSourceUtils;
import com.entity.News;
import com.entity.Teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsService {
    public List<News> findAll() {
        return null;
    }

    public News findById(int id) {
        String sql = "SELECT * FROM NEWS WHERE id = ?";
        News news = new News();
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)

        ) {
            st.setInt(1, id);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news.setId(Integer.parseInt(rs.getString("id")));
                    news.setContent(rs.getString("content"));
                    news.setHomePhoto(rs.getString("home_photo"));
                    news.setTitle(rs.getString("title"));
//                news.setTime(LocalDateTime.parse(rs.getString("time")));
                    news.setShowAble(Integer.parseInt(rs.getString("show_able")));
                    news.setLevel(Integer.parseInt(rs.getString("level")));
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }

    public News addNews(News news) {
        return null;
    }

    //    find the specified number of news
    public List<News> findSome(int num) {
        List<News> newsList = new ArrayList<>();
        String sql = "SELECT * FROM NEWS WHERE show_able = 0 limit ?";
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)
        ) {
            st.setInt(1, num);
            try (ResultSet rs = st.executeQuery();) {
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return newsList;
    }
}
