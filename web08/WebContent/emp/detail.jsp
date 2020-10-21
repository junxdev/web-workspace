<%@page import="com.bit.emp.EmpDTO"%>
<%@page import="com.bit.emp.EmpCRUD"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String path = "../";
	%>
	<%@ include file="../template/header.jsp" %>
	<%@ include file="../template/menu.jsp" %>
		<h1>EMP DETAIL</h1>
		<jsp:useBean id="bean" class="com.bit.emp.EmpDTO"></jsp:useBean>
		<jsp:setProperty property="empno" name="bean"/> <!-- id가 bean인 객체의 empno 필드에 empno 매개변수 값을 대입한다 -->
		<%
		bean = EmpCRUD.detail(bean.getEmpno());
		%>
			<table>
				<tr>
					<td bgcolor="#cccccc">사번</td>
					<td><%= bean.getEmpno() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">이름</td>
					<td><%= bean.getEname() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">입사일</td>
					<td><%= bean.getHiredate() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">연봉</td>
					<td><%= bean.getPay() %></td>
				</tr>
				<tr>
					<td colspan="2">
						<a href="edit.jsp?empno=<%= bean.getEmpno() %>&ename=<%= bean.getEname() %>&pay=<%= bean.getPay() %>">수정</a>
						<a href="delete.jsp">삭제</a>
					</td>
				</tr>
			</table>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>