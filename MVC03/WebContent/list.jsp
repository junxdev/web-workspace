<%@page import="com.bit.dept.model.Dept04DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dept.model.Dept04DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content {
		color: white;
	}
	#content > h2 {
		text-align: center;
	}
	#content table {
		width: 500px;
		margin: 10px auto;
		border-collapse: collapse;
		text-align: center;
	}
	#content table tr > th, #content table tr > td {
		border: 1px solid white;
	}
	#content > h2 + a {
		display: block;
		width: 70px;
		height: 30px;
		text-align: center;
		line-height: 30px;
		color: black;
		background-image: linear-gradient(red, white, red);
		border-radius: 25px;
		margin: 0px auto;
	}
</style>
<title>RED MOTORCYCLE CLUB :: LOCATION</title>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<% 
Dept04DAO dao = new Dept04DAO();
ArrayList<Dept04DTO> list = new ArrayList<Dept04DTO>();
//list = dao.selectAll();
//for(Dept04DTO dto : list) {
%>
	<h2>LOCATION : Where we've been through...</h2>
	<a href="./add">입력</a>
	<table>
		<tr>
			<th>No.</th>
			<th>City</th>
			<th>Activity</th>
		</tr>
		<c:forEach items="${list }" var="x">
			<c:url value="detail" var="detail">
				<c:param name="num" value="${x.deptno }"></c:param>
			</c:url>
		<tr>
			<!-- <td><a href="detail?idx=${x.deptno}">${x.deptno }</a></td> -->
			<td><a href="${detail }">${x.deptno }</a></td>
			<td>${x.dname }</td>
			<td>${x.loc }</td>
			<!-- <td><%//= dto.getDeptno() %></td>
			<td><%//= dto.getLoc() %></td>
			<td><%//= dto.getDname() %></td> -->
		</tr>
		</c:forEach>
		<%
		//}
		%>
	</table>
<%@ include file="template/footer.jspf" %>
</body>
</html>