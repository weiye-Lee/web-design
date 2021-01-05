package com.Service;

import com.Unit.DataSourceUtils;
import com.entity.Lab;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LabService {
    public Lab findById(int id) {
        String sql = "SELECT * FROM LAB WHERE LAB.ID = ?";
        Lab lab = new Lab();
        try (
                Connection conn = DataSourceUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)

        ) {
            st.setInt(1, id);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    lab.setDirection(rs.getString("direction"));
                    lab.setId(rs.getInt("id"));
                    lab.setIntroduction(rs.getString("introduction"));
                    lab.setShortText(rs.getString("short_text"));
                    lab.setClass_name(rs.getString("class_name"));
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lab;
    }
}
