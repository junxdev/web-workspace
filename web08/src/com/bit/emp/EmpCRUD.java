package com.bit.emp;

import java.sql.*;
import java.util.*;

import com.bit.util.DB;

// 자료구조 활용은 Back-end에서 처리

public class EmpCRUD {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static EmpDTO detail(int empno) {
		EmpDTO bean = new EmpDTO();
		String sql = "SELECT * FROM emp02 WHERE empno = " + empno;
		
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setPay(rs.getInt("pay"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try {
					if(rs != null) rs.close();
					if(stmt != null) stmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return bean;
	}

	public static void insert(int empno, String ename, int pay) {
		String sql = "INSERT INTO emp02 VALUES (" + empno + ", '" + ename + "', sysdate, " + pay + ")";
		
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
	
	public static ArrayList<EmpDTO> list() {
		ArrayList<EmpDTO> list = new ArrayList<EmpDTO>();
		String sql = "SELECT * FROM emp02 ORDER BY EXTRACT(YEAR FROM hiredate) DESC, EXTRACT(MONTH FROM hiredate) DESC, EXTRACT(DAY FROM hiredate) DESC, empno ASC";
		
		try {
			conn = DB.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				EmpDTO bean = new EmpDTO();
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setPay(rs.getInt("pay"));
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
