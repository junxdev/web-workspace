<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="test.Target" scope="request"></jsp:useBean>
	<h1>리다이렉트 : <% System.out.println(bean); %></h1>
	<%
		// <meta http-equiv="refresh" content="1, ../"> Client Browser에서 처리(Java Compiler에게는 단순한 문자열), 따라서 첫 Response(ex01) 이후 처리됨
		// request ex01 -> response ex01 -> (client) sendRedirect -> request ex03 -> response ex03
		response.sendRedirect("result/ex03.jsp?msg=abcd"); // Java Comiler가 해석하나 Client Broweser에서 처리하도록 명령(위와 같음)
	%>
</body>
</html>