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
	<h2>Conditional</h2>
	<%
		boolean tf = true;
		pageContext.setAttribute("tf", tf);
	%>
	<c:if test="${tf == true }"><p>TRUE</p></c:if>
	<c:if test="${tf != false }"><p>FALSE</p></c:if>
	<c:set var="num" value="10"></c:set>
	<c:if test="${num eq 10 }"><p>equals to 10</p></c:if>
	<c:if test="${num lt 11 }"><p>less than 11</p></c:if>
	<c:if test="${num gt 9 }"><p>greater than 10</p></c:if>
	
	<c:choose>
		<c:when test="${num eq 11 }"><p>equals to 11</p></c:when>
		<c:when test="${num eq 19 }"><p>equals to 19</p></c:when>
		<c:otherwise><p>I can't guess the number</p></c:otherwise>
	</c:choose>
	
	<h2>Repeat</h2>
	<c:forEach begin="1" end="5" var="num" varStatus="status" step="2"><p>repeat ${status.current } times</p></c:forEach>
</body>
</html>