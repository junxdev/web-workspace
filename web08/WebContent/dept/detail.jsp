<%@page import="com.bit.dept.DeptCRUD"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/template/header.jsp">
		<jsp:param value="../" name="path"/>
	</jsp:include>
	<jsp:include page="/template/menu.jsp">
		<jsp:param value="../" name="path"/>
	</jsp:include>
	<jsp:useBean id="bean" class="com.bit.dept.DeptDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<%
	DeptCRUD.detail(bean);
	%>
	<h1>No.<jsp:getProperty property="deptno" name="bean"/> DEPT DETAIL</h1>
	<table>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="bean"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="password" name="bean"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="bean"></td>
		</tr>
		<tr>
			<td>등급</td>
			<td><jsp:getProperty property="grade" name="bean"></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="edit.jsp">수정</a>
				<a href="delete.jsp">삭제</a>
			</td>
		</tr>
	</table>
	<jsp:include page="/template/footer.jsp"></jsp:include>
</body>
</html>