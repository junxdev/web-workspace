<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>get parameter type</h1>
	<!-- http://192.168.0.148:8080/web02/Ex03.jsp?id=jun -->
	<p>id : <%=request.getParameter("id") %></p>
</body>
</html>