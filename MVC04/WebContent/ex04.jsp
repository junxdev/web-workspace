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
	<jsp:useBean id="bean" scope="page" class="com.bit.model.JavaBean"></jsp:useBean>
	<jsp:setProperty property="num" value="10" name="bean"/>
	<jsp:setProperty property="tf" value="false" name="bean"/>
	<jsp:setProperty property="name" value="BEAN" name="bean"/>
	<c:set target="${bean }" property="digit" value="10.0"></c:set>
	<c:set target="${bean }" property="gender" value="F"></c:set>
	
	<ol>
		<li><jsp:getProperty property="num" name="bean"/></li>
		<li><jsp:getProperty property="tf" name="bean"/></li>
		<li><jsp:getProperty property="name" name="bean"/></li>
		<li><c:out value="${bean.digit }" ></c:out></li>
		<li><c:out value="${bean.gender }" ></c:out></li>
	</ol>
</body>
</html>