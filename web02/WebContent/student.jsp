<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="800">
		<tr align="center">
			<td width="50">학번</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
		</tr>
	<%
		String sql = "select * from student order by num asc";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		java.util.Properties prop = new java.util.Properties();
		prop.setProperty("user", user);
		prop.setProperty("password", password);
		
		java.lang.Class.forName("oracle.jdbc.driver.OracleDriver"); // DriverManager에게 필요할 때 활용
		// new oracle.jdbc.driver.OracleDriver();
		
		java.sql.Connection conn = null;
		java.sql.Statement stmt = null;
		java.sql.ResultSet rs = null;
		
		try {
			conn = java.sql.DriverManager.getConnection(url, prop);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
			
	%>
			<tr align="center">
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
			</tr>
	<%
			}
		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}
	%>
	</table>
	<a href = "add.jsp">[입력]</a>
</body>
</html>