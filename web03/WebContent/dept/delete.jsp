<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="0; url=list.jsp">
<title>DEPT DELETE</title>
</head>
<body>
	<%
		String deptno = request.getParameter("deptno");
		String sql = "DELETE FROM dept WHERE deptno = " + deptno;
		System.out.println(sql);
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		java.util.Properties info = new java.util.Properties();
		info.setProperty("user", user);
		info.setProperty("password", password);
		
		java.sql.Connection conn = null;
		java.sql.Statement stmt = null;
		
		try {
			java.lang.Class.forName(driver);
			conn = java.sql.DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("ojdbc14.jar has not been found.");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("Wrong value has been inserted into variables of sql, url, user, password");
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		
	%>
</body>
</html>