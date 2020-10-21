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
	<h1>JSTL</h1>
	<p>put jstl, standard in lib</p>
	<p>taglib</p>
	<c:out value="c:out"></c:out><br/>
	<c:set var="msg" scope="page" value="c:set"></c:set>
	${pageScope.msg }<br/>
	<c:out value="${newMsg }">Alt string shows when value is null</c:out><br/>
	<c:out value="<%= null %>">Alt string shows when value is null</c:out><br/>
	<c:out value="c:out closed self"/><br/>
	<c:out value='<%= "even java works here" %>'/><br/>
</body>
</html>