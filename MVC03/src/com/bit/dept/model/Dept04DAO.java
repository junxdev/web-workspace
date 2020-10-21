package com.bit.dept.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dept04DAO {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public Dept04DAO() throws SQLException {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn = DriverManager.getConnection(url, user, password);
	}
	
	public ArrayList<Dept04DTO> selectAll() throws SQLException {
		ArrayList<Dept04DTO> list = new ArrayList<Dept04DTO>();
		String sql = "SELECT * FROM dept04";
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Dept04DTO(
						rs.getInt("deptno"),
						rs.getString("dname"),
						rs.getString("loc")));
			}
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		
		return list;
	}
	
	public int insertOne(String dname, String loc) throws SQLException {
		String sql = "INSERT INTO dept04 VALUES (dept04_seq.nextval, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dname);
			ps.setString(2, loc);
			return ps.executeUpdate();
		} finally {
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
	}
	
	public int deleteOne(int deptno) throws SQLException {
		String sql = "DELETE FROM dept04 WHERE deptno = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, deptno);
			return ps.executeUpdate();
		} finally {
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
	}
	
	public int maxDeptno() throws SQLException {
		String sql = "SELECT MAX(deptno) AS \"MAX\" FROM dept04";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) return rs.getInt("MAX");
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		return 0;
	}
	
	public int updateOne(int deptno, String dname, String loc) throws SQLException {
		String sql = "UPDATE dept04 SET dname = ?, loc = ? WHERE deptno = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dname);
			ps.setString(2, loc);
			ps.setInt(3, deptno);
			return ps.executeUpdate();
		} finally {
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
	}
	
	public Dept04DTO seleteOne(int deptno) throws SQLException {
		String sql = "SELECT * FROM dept04 WHERE deptno = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, deptno);
			rs = ps.executeQuery();
			if(rs.next()) return new Dept04DTO(
					rs.getInt("deptno"), 
					rs.getString("dname"), 
					rs.getString("loc"));
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		return null;
	}
	
	public int rowCount() throws SQLException {
		String sql = "SELECT COUNT(*) as cnt FROM dept04";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) return rs.getInt("cnt");
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		return 0;
	}
}
