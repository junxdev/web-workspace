<%@page import="com.bit.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP DETAIL</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.bit.EmpDTO"></jsp:useBean>
	<jsp:setProperty property="empno" name="bean"/>
	<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM emp02 WHERE empno = " + bean.getEmpno();
	try {
		conn = DB.getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()) {
			bean.setEname(rs.getString("ename"));
			bean.setHiredate(rs.getDate("hiredate"));
			bean.setPay(rs.getInt("pay"));
		}
	} finally {
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	%>
	<h1>EMP DETAIL</h1>
	<table width="800">
			<tr>
				<td>사번</td>
				<td><jsp:getProperty property="empno" name="bean"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty property="ename" name="bean"></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><jsp:getProperty property="hiredate" name="bean"></td>
			</tr>
			<tr>
				<td>연봉</td>
				<td><jsp:getProperty property="pay" name="bean"></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="?title=emp/edit&empno=<jsp:getProperty property="empno" name="bean">">수정</a>
					<a href="emp/delete.jsp&empno=<jsp:getProperty property="empno" name="bean">">삭제</a>
				</td>
			</tr>
		</table>
</body>
</html>