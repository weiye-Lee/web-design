package com.Service;

import com.Unit.DataSourceUtils;
import com.entity.Teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherService {
    public List<Teacher> findByLevel(int level) {
        String sql = "SELECT * FROM TEACHER WHERE LEVEL = ?";
        List<Teacher> list = new ArrayList<>();
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)


        ) {
            st.setInt(1, level);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    Teacher teacher = new Teacher();
                    teacher.setId(rs.getInt("id"));
                    teacher.setName(rs.getString("name"));
                    teacher.setHeadPhoto(rs.getString("head_photo"));
                    teacher.setSex(0);
//                    teacher.setPhone(rs.getString("phone"));
//                    teacher.setEmail(rs.getString("email"));
//                    teacher.setIntroduction(rs.getString("introduction"));
//                    teacher.setLevel(rs.getInt("level"));
                    list.add(teacher);
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public Teacher findById(int id) {
        String sql = "SELECT * FROM TEACHER WHERE id = ?";
        Teacher teacher = new Teacher();
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)

        ) {
            st.setInt(1, id);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    teacher.setId(rs.getInt("id"));
                    teacher.setName(rs.getString("name"));
                    teacher.setHeadPhoto(rs.getString("head_photo"));
                    teacher.setPhone(rs.getString("phone"));
                    teacher.setEmail(rs.getString("email"));
                    teacher.setIntroduction(rs.getString("introduction"));
                    teacher.setLevel(rs.getInt("level"));
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println(teacher.toString());
        return teacher;
    }
}
