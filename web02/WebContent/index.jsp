<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Student List</title>
</head>
<body>
	<%
	java.lang.Class.forName("oracle.jdbc.driver.OracleDriver");
	
	java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	java.sql.ResultSet result = null;
	
	String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	java.util.Properties info = new java.util.Properties();
	
	String user = "scott";
	String password = "tiger";
	info.setProperty("user", user);
	info.setProperty("password", password);
	
	String sql = "SELECT * FROM student ORDER BY num ASC";
	
	try {
		conn = java.sql.DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		result = stmt.executeQuery(sql);
		%>
		<table border="2" width="100%">
			<tr align="center">
				<td>학번</td>
				<td>이름</td>
				<td>국어</td>
				<td>영어</td>
				<td>수학</td>
			</tr>
		<%
		while(result.next()) {
			String num = result.getString(1);
			String name = result.getString(2);
			String kor = result.getString(3);
			String eng = result.getString(4);
			String math = result.getString(5);
			%>
			<tr align="center">
				<td><%= num %></td>
				<td><a href="<%= "personal.jsp?num=" + num + "&name=" + name%>" ><%= name %></td>
				<td><%= kor %></td>
				<td><%= eng %></td>
				<td><%= math %></td>
			</tr>
			<%
		}
	} finally {
		if(result != null) result.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	%>
	</table>
	<a href="add.jsp"><h5>등록</h5></a>
</body>
</html>