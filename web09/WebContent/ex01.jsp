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
	<h1>�����̷�Ʈ : <% System.out.println(bean); %></h1>
	<%
		// <meta http-equiv="refresh" content="1, ../"> Client Browser���� ó��(Java Compiler���Դ� �ܼ��� ���ڿ�), ���� ù Response(ex01) ���� ó����
		// request ex01 -> response ex01 -> (client) sendRedirect -> request ex03 -> response ex03
		response.sendRedirect("result/ex03.jsp?msg=abcd"); // Java Comiler�� �ؼ��ϳ� Client Broweser���� ó���ϵ��� ���(���� ����)
	%>
</body>
</html>