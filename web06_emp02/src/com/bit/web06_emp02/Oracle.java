package com.bit.web06_emp02;

import java.sql.*;

public class Oracle {
	/*
	 * Singleton Pattern
	 * Restricts the instantiation of a class to one "single" instance
	 * 단순한 작업을 위한 객체의 무분별한 인스턴스화는 메모리를 낭비하여 성능 저하
	*/
	private Oracle() {} // 다른 개발자가 반복적으로 접근하지 못하도록 설정 : 첫 생성한 Connection 필드를 활용 
	
	private static String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	private static String user = "scott";
	private static String password = "tiger";
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	
	private static Connection conn = null;
	
	public static Connection getConnection() {
		try {
			if(conn == null || conn.isClosed()) {
					Class.forName(driver);
					conn = DriverManager.getConnection(url, user, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
//	public static void main(String[] args) {
//		System.out.println("Access has been " + (getConnection() != null ? "permitted" : "denied") + ".");
//	}

}
