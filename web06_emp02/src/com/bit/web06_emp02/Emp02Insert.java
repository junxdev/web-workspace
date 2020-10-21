package com.bit.web06_emp02;

import java.sql.*;

public class Emp02Insert {

	public void insert(int empno, String ename, int pay) {
		// {CALL procedure_name()}
		String sql = "{CALL emp02insert("+ empno +", '" + ename + "', "+ pay + ")}";
		Connection conn = null;
		CallableStatement callstmt = null;
		try {
			conn = Oracle.getConnection();
			callstmt = conn.prepareCall(sql);
			callstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(callstmt != null) callstmt.close();
				if(conn != null) conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
//	public static void main(String[] args) {
//		Emp02Insert insert = new Emp02Insert();
//		insert.insert(7, "±èÁö¼ö", 3500);
//		System.out.println("The data has been inserted");
//	}

}
