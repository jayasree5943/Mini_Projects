package com.jay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.jay.model.VernderModel;

public class VenderDAO {
	public void insertlogin(VernderModel vender) {
		String sql ="INSERT into vendertable(vender_name,gst_number,email,mobilenumber) values(?,?,?,?)";
		try(
				Connection con = DBConnection.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				){
			ps.setString(1,vender.getVendorName());
			ps.setString(2,vender.getGstNumber());
			ps.setString(3,vender.getEmail());
			ps.setString(4,vender.getMobile());
			
			ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
