<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<h1></h1>
	<c:url value="ex03.jsp" var="ex03"/>
	<c:url value="ex09.jsp" var="ex09">
		<c:param name="id" value="Buble"></c:param>
		<c:set value="Michael" var="id" scope="request"></c:set>
	</c:url>
	<ul>
		<li><a href="ex01.jsp">ex01</a></li>
		<li><a href="ex09.jsp?id=BOLTON">ex09</a></li>
		<li><a href='<c:url value="ex02.jsp"/>'>ex02</a></li>
		<li><a href="${ex03 }">ex03</a></li>
		<li><a href="${ex09 }">ex09</a></li>
	</ul>
</body>
</html>