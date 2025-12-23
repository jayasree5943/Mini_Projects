package com.jay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jay.model.UserModel;

public class UserDao {

    // INSERT USER
    public void insertUser(UserModel user) {

        String sql = "INSERT INTO users(fname,lname,phone,email) VALUES (?,?,?,?)";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {
            ps.setString(1, user.getFname());
            ps.setString(2, user.getLname());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getEmail());

            ps.executeUpdate();   // ✅ VERY IMPORTANT

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // SELECT ALL USERS
    public List<UserModel> getAllUsers() {

        List<UserModel> list = new ArrayList<>();
        String sql = "SELECT * FROM users";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()
        ) {
            while (rs.next()) {

                UserModel u = new UserModel(
                        rs.getInt("id"),
                        rs.getString("fname"),
                        rs.getString("lname"),
                        rs.getString("phone"),
                        rs.getString("email")
                );
                list.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
