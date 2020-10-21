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
	<h1>action tag : <% System.out.println(bean); %></h1>
	<jsp:forward page="result/ex03.jsp">	<!-- 첫 request 중 서버에서 작업 -->
		<jsp:param value="action tag" name="msg"/>
	</jsp:forward>
</body>
</html>