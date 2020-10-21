package model;

import java.sql.*;

public class MyOracle {
	private static Connection conn;
	private static String driver = "oracle.jdbc.OracleDriver";
	private static String user = "scott";
	private static String password = "tiger";
	private static String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	
	private MyOracle() {}
	
	public static Connection getConn() {
		try {
			if(conn == null || conn.isClosed()) {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
