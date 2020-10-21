package com.bit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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
			System.out.println("DB SQLException");
		} catch (ClassNotFoundException e) {
			System.out.println("DB ClassNotFoundException");
		}
		return conn;
	}
}
