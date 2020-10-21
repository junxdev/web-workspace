package com.bit.web06_emp02;

import java.sql.*;

public class Emp02Delete {

	public int delete(int empno) {
		String sql = "{CALL emp02_delete(?, " + empno + ")}";
		
		Connection conn = null;
		CallableStatement callstmt = null;
		int result = -1;
		
		try {
			conn = Oracle.getConnection();
			callstmt = conn.prepareCall(sql);
			callstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.INTEGER);
			callstmt.execute();
			result = callstmt.getInt(1);
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(callstmt != null) callstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public static void main(String[] args) {
		Emp02Delete del = new Emp02Delete();
		
		System.out.println("DELETE" + ((del.delete(5) == 1) ? "SUCCESS" : "FAIL"));
	}

}
