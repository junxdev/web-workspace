<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<h1>JSTL Formatting</h1>
	<c:set value="100000000000" var="money"></c:set>
	<p>${money }</p>
	<p><f:formatNumber value="${money }" pattern="#,###.#"></f:formatNumber></p>
	<c:set value="<%= new Date() %>" var="date"></c:set>
	<p>${date }</p>
	<p><f:formatDate value="${date }" pattern="YYYY.MM.dd HH:mm:ss"/></p>
</body>
</html>