package com.bit.web06_emp02;

import java.sql.*;

public class Oracle {
	/*
	 * Singleton Pattern
	 * Restricts the instantiation of a class to one "single" instance
	 * �ܼ��� �۾��� ���� ��ü�� ���к��� �ν��Ͻ�ȭ�� �޸𸮸� �����Ͽ� ���� ����
	*/
	private Oracle() {} // �ٸ� �����ڰ� �ݺ������� �������� ���ϵ��� ���� : ù ������ Connection �ʵ带 Ȱ�� 
	
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
