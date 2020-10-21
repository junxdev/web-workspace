<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="0, url=detail.jsp?empno=<%= request.getParameter("empno") %>">
<title>EMP UPDATE</title>
</head>
<body>
	<%
	String empno = request.getParameter("empno");
	String ename = request.getParameter("ename");
	String job = request.getParameter("job");
	String mgr = request.getParameter("mgr");
	String sal = request.getParameter("sal");
	String comm = request.getParameter("comm");

	String sql = "UPDATE emp SET ename = '" + ename + "', job = '" + job;
	sql += "', mgr = " + mgr + ", sal = " + sal + ", comm = " + comm + " WHERE empno = " + empno;
	
	System.out.println(sql);
	
	String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	String user = "scott";
	String password = "tiger";

	java.lang.Class.forName("oracle.jdbc.driver.OracleDriver");
	
	java.util.Properties info = new java.util.Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	
	java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	java.sql.ResultSet rs = null;

	try{
		conn = java.sql.DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
	} finally {
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	%>
</body>
</html>