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
	<%
	response.setCharacterEncoding("EUC-KR");
	String param1 = request.getParameter("ename");
	String param2 = request.getParameter("pay");
	String ename = null;
	int pay = -1;
	try {
		ename = param1.trim();
		pay = Integer.parseInt(param2.trim());
	} catch(Exception e) {
		System.out.println(java.util.Arrays.toString(param1.getBytes()));
		response.sendRedirect("add.jsp?ename=" + java.util.Arrays.toString(param1.getBytes()));
		//response.sendRedirect("add.jsp?ename=" + Arrays.toString(param1.getBytes()));
		return;
	}
	String sql = "INSERT INTO emp01 VALUES (emp01_seq.nextval, '" + ename + "', sysdate, " + pay + ")";
	
	try {
		Class.forName(driver);
		conn = java.sql.DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
	} finally {
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	
	response.sendRedirect("list.jsp");
	%>
</body>
</html>