<%@page import="java.util.*"%>
<%@page import="com.bit.dept04.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List as usual</title>
<link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<body>
	<%@ include file="/template/header.jspf" %>
	<h1>List as usual</h1>
	<dl>
		<dt>deptno</dt>
		<dd>
			<div>dname</div>
			<div>loc</div>
		</dd>
		<c:forEach items="${list }" var="bean">
			<dt><a href="detail.bit?idx=${bean.deptno }">${bean.deptno }</a></dt>
			<dd>
				<div>${bean.dname }</div>
				<div>${bean.loc }</div>
			</dd>
		</c:forEach>
	</dl>
</body>
</html>