<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<%@ include file="../template/menu.jsp" %>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String name = null;
	
	String sql = "SELECT name FROM dept01 WHERE id = '" + id + "' AND pw = '" + pw + "'";
	try {
		Class.forName(driver);
		conn = java.sql.DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()) {
			name = rs.getString("name");
		}
	} finally {
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	if(name != null) {
		session.setAttribute("name", name);
		response.sendRedirect("../emp/list.jsp");
	%>
	<h1><%= session.getAttribute("name") %>님 환영합니다</h1>
	<%
	} else if(name == null){
		response.sendRedirect("form.jsp?err=1");
	}
	%>
<%@ include file="../template/footer.jsp" %>
</body>
</html>