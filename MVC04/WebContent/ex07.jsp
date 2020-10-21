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
	<h1>JSTL etc</h1>
	<%
		String things = "ball, cup, stick, bowl";
		pageContext.setAttribute("things", things);
	%>
	<ul>
		<c:forTokens items="${things }" delims=", " var="thing">
		<li>${thing }</li>
		</c:forTokens>
	</ul>
	<div>
		<c:import url="https://google.com"></c:import>
	</div>
</body>
</html>