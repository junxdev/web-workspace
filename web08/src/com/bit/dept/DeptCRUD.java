package com.bit.dept;

import java.util.ArrayList;
import java.sql.*;

import com.bit.util.DB;

public class DeptCRUD {
	private static Connection conn;
	private static Statement stmt;
	private static ResultSet rs;
	
	private DeptCRUD() {}
	
	public static void login(DeptDTO bean) {
		String sql = "SELECT name, grade FROM dept01 WHERE id = '" + bean.getId() + "' AND pw = '" + bean.getPw() +"'";
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				bean.setResult(true);
				bean.setName(rs.getString("name"));
				bean.setGrade(rs.getInt("grade"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void detail(DeptDTO bean) {
		String sql = "SELECT * FROM dept01 WHERE deptno = " + bean.getDeptno();
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				bean.setDeptno(rs.getInt("deptno"));
				bean.setId(rs.getString("id"));
				bean.setPw(rs.getString("pw"));
				bean.setName(rs.getString("name"));
				bean.setGrade(rs.getInt("grade"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void insert(DeptDTO bean) {
		String sql = "INSERT INTO dept01 VALUES (dept01_seq.nextval, '" + bean.getId() + "', '" + bean.getPw() + "', '"
				+ bean.getName() + "', " + bean.getGrade() + ")";
		
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(stmt != null) stmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}
	
	public static ArrayList<DeptDTO> list() {
		ArrayList<DeptDTO> list = new ArrayList<DeptDTO>();
		String sql = "SELECT * FROM dept01 ORDER BY deptno DESC";
		
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				DeptDTO bean = new DeptDTO();
				bean.setDeptno(rs.getInt("deptno"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setGrade(rs.getInt("grade"));
				list.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
}
