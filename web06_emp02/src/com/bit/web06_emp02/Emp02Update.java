package com.bit.web06_emp02;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class Emp02Update {
	
	public int update(String ename, int pay, int empno) {
		String sql = "{CALL emp02_update(?, '" + ename + "', " + pay + ", " + empno + ")}";
		
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(callstmt != null) callstmt.close();
				if(conn != null) Oracle.getConnection().close(); // °°Àº °´Ã¼ Áö¸ñ
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	public static void main(String[] args) {
		Emp02Update update = new Emp02Update();

		System.out.println("UPDATE" + ((
				update.update("¿ÁÁÖÇö", 7500, 4) == 1) ? "SUCCESS" : "FAIL"));
	}

}
