package com.bit.emp04.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Emp04DAO {
	DataSource ds; 
	public Emp04DAO() {
		try {
			InitialContext ic = new InitialContext();
			Context ct = null;
			
			ct = (Context) ic.lookup("java:/comp/env");
			ds = (DataSource) ct.lookup("jdbc/oracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Emp04DTO login(int sabun, String name) {
		String sql = "select * from emp04 where sabun = ? and name = ?";
		Emp04DTO dto = new Emp04DTO();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sabun);
			ps.setString(2, name);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setSabun(rs.getInt("sabun"));
				dto.setName(rs.getString("name"));
				dto.setLvl(rs.getInt("lvl"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return dto;
	}
}
