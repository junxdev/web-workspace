package com.bit.util;

import java.sql.*;

public class DB {
	private static Connection conn;
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	private static String user = "scott";
	private static String password = "tiger";
	
	private DB() {}
	
	public static Connection getConnection() {
		try {
			if(conn == null || conn.isClosed()) {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("Verify ojdbc14.jar file is located in library directory");
			System.out.println("Verify the path to driver is correct");
		}
		return conn;
	}
}
