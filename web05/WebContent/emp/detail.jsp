<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP DETAIL</title>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<%@ include file="../template/menu.jsp" %>
<%
int empno = Integer.parseInt(request.getParameter("idx"));
String ename = null;
java.sql.Date hiredate = null;
int pay = 0;

String sql = "SELECT * FROM emp01 WHERE empno = " + empno;

try {
	Class.forName(driver);
	conn = java.sql.DriverManager.getConnection(url, user, password);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rs.next()) {
		ename = rs.getString("ename");
		hiredate = rs.getDate("hiredate");
		pay = rs.getInt("pay");
	}
} finally {
	if(rs != null) rs.close();
	if(stmt != null) stmt.close();
	if(conn != null) conn.close();
}
%>
	<h1>���� ����</h1>
	<table>
		<tr>
			<td>���</td>
			<td><%= empno %></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><%= ename %></td>
		</tr>
		<tr>
			<td>�Ի�����</td>
			<td><%= hiredate %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%= pay %></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="#">����</a>
				<a href="#">����</a>
			</td>
		</tr>
	</table>
<%@ include file="../template/footer.jsp" %>
</body>
</html>