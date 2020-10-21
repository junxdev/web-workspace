<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP LIST</title>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<%@ include file="../template/menu.jsp" %>
	<h1>사원 목록</h1>
	<p><a href="add.jsp" align="right">입력</a></p>
	<table width="95%" border="1" cellspacing="0" align="center">
		<tr align="center" bgcolor="#aaaaaa">
			<th>사번</th>
			<th>이름</th>
			<th>입사일</th>
			<th>연봉</th>
		</tr>
		<%
		int pageNum = 1;
		String pageParameter = request.getParameter("page");
		if(pageParameter != null) {
			pageNum = Integer.parseInt(pageParameter);
		}
		int startNum = 1 + (pageNum - 1) * 10;
		int endNum = 10 + (pageNum - 1) * 10;
		String sql  = "SELECT * FROM(SELECT rownum AS rn, empno, ename, hiredate, pay FROM(SELECT * FROM emp01 ORDER BY empno DESC))" + 
					"WHERE rn BETWEEN " + startNum + " AND " + endNum;
		int total = 0;
		
		java.lang.Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT COUNT(*) FROM emp01");
			if(rs.next()) {
				total = rs.getInt(1);
			}
			stmt.close();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				%>
					<tr align="center">
						<td><%= rs.getInt("empno") %></td>
						<td><a href="detail.jsp?idx=<%= rs.getString("empno") %>"><%= rs.getString("ename") %></a></td>
						<td><%= rs.getDate("hiredate") %></td>
						<td><%= rs.getInt("pay") %></td>
					</tr>
				<%
			}
		} finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		%>
	</table>
	<%
	for(int i = 0; i < (total - 1) / 10 + 1; i++) {
		%> <a href="/web05/emp/list.jsp?page=<%= i + 1 %>">[<%= i + 1 %>]</a>
		<% 
	}
	%>
	<br>
	<%
	int start = 0;
	int end = ((pageNum - 1) / 10 + 1) * 10;
	int limit = total / 10;
	if(pageNum < 11) {
		start = 0;
	} else {
		start = end - 10;
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (end - 10) + "\">[prev]</a>");
	}
	for(int i = start; i < end; i++) {
		if(i > limit) break;
		%> <a href="/web05/emp/list.jsp?page=<%= i + 1 %>">[<%= i + 1 %>]</a>
		<% 
	}
	
	if(end < limit) {
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (end + 1) + "\">[next]</a>");
	}
	%>
	<br>
	<%
	start = ((pageNum - 1) / 10) * 10;
	
	limit = ((total - 1) / 10) + 1;
	end = start + 10;
	
	if(start != 0) {
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (start) + "\">[prev]</a>");
	}
	
	if(end > limit) end = limit;
	for(int i = start; i < end; i++) {
		if(i > limit) break;
		%> <a href="/web05/emp/list.jsp?page=<%= i + 1 %>">[<%= i + 1 %>]</a>
		<% 
	}
	
	if(end < limit) {
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (end + 1) + "\">[next]</a>");
	}
	%>
	<br>
	<%
	int leng = 5;
	limit = ((total - 1) / 10) + 1;
	start = ((pageNum - 1) / leng) * leng;
	
	end = start + leng;
	
	if(start != 0) {
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (start) + "\">[prev]</a>");
	}
	
	if(end > limit) end = limit;
	for(int i = start; i < end; i++) {
		if(i > limit) break;
		%> <a href="/web05/emp/list.jsp?page=<%= i + 1 %>">[<%= i + 1 %>]</a>
		<% 
	}
	
	if(end < limit) {
		out.print("<a href=\"/web05/emp/list.jsp?page=" + (end + 1) + "\">[next]</a>");
	}
	%>
	<br>
	<% 
	for(int i = -2; i < 3; i++) {
		if(pageNum + i < 1 || pageNum + i > (total / 10) + 1) {
			out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
			continue;
		}
		if(i == 0) {
		%> 
		<% 
		}
		%> <a href="/web05/emp/list.jsp?page=<%= pageNum + i %>">[<%= pageNum + i %>]</a>
	<% 
	}
	%>
	<!-- 
	<p>
		
		<a href="/web05/emp/list.jsp?page=<%= pageNum + 1 %>">[<%= pageNum + 1 %>]</a>
		<a href="/web05/emp/list.jsp?page=<%= pageNum + 2 %>">[<%= pageNum + 2 %>]</a>
		<a href="/web05/emp/list.jsp?page=<%= pageNum + 3 %>">[<%= pageNum + 3 %>]</a>
		<a href="/web05/emp/list.jsp?page=<%= pageNum + 4 %>">[<%= pageNum + 4 %>]</a>
	</p>
	 -->
<%@ include file="../template/footer.jsp" %>
</body>
</html>