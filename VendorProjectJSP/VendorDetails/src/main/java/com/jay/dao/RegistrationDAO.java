package com.jay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.jay.model.VernderModel;

public class RegistrationDAO {

    public void register(VernderModel model) {

        String sql = "INSERT INTO valid(username,password) VALUES (?, ?)";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {
            ps.setString(1, model.getUsername());
            ps.setString(2, model.getPassword());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
