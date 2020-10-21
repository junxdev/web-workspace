<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, com.bit.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP LIST</title>
</head>
<%
ArrayList<EmpDTO> list = new ArrayList<EmpDTO>();
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String sql = "SELECT * FROM emp02";
try {
	conn = DB.getConnection();
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()) {
		EmpDTO bean = new EmpDTO();
		bean.setEmpno(rs.getInt("empno"));
		bean.setEname(rs.getString("ename"));
		bean.setHiredate(rs.getDate("hiredate"));
		bean.setPay(rs.getInt("pay"));
		list.add(bean);
	}
} finally {
	if(rs != null) rs.close();
	if(stmt != null) stmt.close();
	if(conn != null) conn.close();
}
%>
<body>
	<h1>EMP LIST</h1>
	<table width="800">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		for(EmpDTO bean : list) {
		%>
		<tr align="center">
			<td><%= bean.getEmpno() %></td>
			<td><a href="?title=emp/detail&empno=<%= bean.getEmpno() %>"><%= bean.getEname() %></a></td>
			<td><%= bean.getHiredate() %></td>
			<td><%= bean.getPay() %></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="?title=emp/add">등록</a>
</body>
</html>