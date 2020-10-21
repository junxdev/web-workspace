<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Personal Information</h1>
	<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	// out.println(num);
	// out.println(name);
	
	String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
	String query = "SELECT * FROM student WHERE num = " + num + " AND name = '" + name + "'";
	java.lang.Class.forName("oracle.jdbc.driver.OracleDriver");
	
	java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	java.sql.ResultSet result = null;
	
	conn = java.sql.DriverManager.getConnection(url, "scott", "tiger");
	stmt = conn.createStatement();
	result = stmt.executeQuery(query);
	
	int kor = 0;
	int eng = 0;
	int math = 0;
	while(result.next()) {
		kor = result.getInt(3);
		eng = result.getInt(4);
		math = result.getInt(5);
	}
	
	int sum = kor + eng + math;
	double avg = (sum * 100 / 3) / 100.0;
	%>
	<table border="2" width="600">
		<tr align="center">
			<td rowspan="2" colspan="3">image</td>
			<td>학번</td>
			<td>이름</td>
		</tr>
		<tr align="center">
			<td><%= num %></td>
			<td><%= name %></td>
		</tr>
		<tr align="center">
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>총점</td>
			<td>평균</td>
		</tr>
		<tr align="center">
			<td><%= kor %></td>
			<td><%= eng %></td>
			<td><%= math %></td>
			<td><%= sum %></td>
			<td><%= avg %></td>
		</tr>
	</table>
	<button></button>
	<a href="student01.jsp"><h5>목록으로</h5></a>
</body>
</html>