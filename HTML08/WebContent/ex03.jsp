<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		if(id.equals("admin") && pw.equals("admin")) {
			out.print("<h2>ADMINISTRATOR has logged in.</h2>");
		} else if(id.equals("user") && pw.equals("user")) {
			out.print("<h2>USER has logged in.</h2>");
		} 
	%>
</body>
</html>