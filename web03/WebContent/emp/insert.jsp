<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="0; url=list.jsp">
<title>DEPT INSERT</title>
</head>
<body>
	<%
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String deptno = request.getParameter("deptno");
		
		String sql = "INSERT INTO emp (empno, ename, job, deptno) VALUES (" + empno + ", '" + ename + "', '" + job + "',  " + deptno + ")";
		System.out.println(sql);
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		java.util.Properties info = new java.util.Properties();
		info.setProperty("user", user);
		info.setProperty("password", password);
		
		java.lang.Class.forName(driver);
		java.sql.Connection conn = null;
		java.sql.Statement stmt = null;
		
		try {
			conn = java.sql.DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	%>
	<h1>Data is inserted</h1>
	<h1>Moving to the list in 3s</h1>
</body>
</html>