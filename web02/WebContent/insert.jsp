<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		String sql = "insert into student values (" 
			+ num + ", '" + name + "', " + kor + ", " + eng + ", " + math + ")"; 
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		java.util.Properties prop = new java.util.Properties();
		prop.setProperty("user", user);
		prop.setProperty("password", password);
		
		java.sql.Connection conn = null;
		java.sql.Statement stmt = null;
		
		try {
		conn = java.sql.DriverManager.getConnection(url, prop);
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	%>
	
	<%
		if(num != null) {
	%>		
		<h3>데이터를 저장했습니다.</h3>
		<table border="1" width="800">
			<tr align="center">
				<td width="50">학번</td>
				<td>이름</td>
				<td>국어</td>
				<td>영어</td>
				<td>수학</td>
			</tr>
			<tr align="center">
				<td><%= num %></td>
				<td><%= name %></td>
				<td><%= kor %></td>
				<td><%= eng %></td>
				<td><%= math %></td>
			</tr>
		</table>
	<%	
		} else {
			
		}
	%>
	<br>
	<a href="student01.jsp">목록으로 이동</a>
</body>
</html>