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
		<jsp:setProperty property="empno" name="bean"/> <!-- id�� bean�� ��ü�� empno �ʵ忡 empno �Ű����� ���� �����Ѵ� -->
		<%
		bean = EmpCRUD.detail(bean.getEmpno());
		%>
			<table>
				<tr>
					<td bgcolor="#cccccc">���</td>
					<td><%= bean.getEmpno() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">�̸�</td>
					<td><%= bean.getEname() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">�Ի���</td>
					<td><%= bean.getHiredate() %></td>
				</tr>
				<tr>
					<td bgcolor="#cccccc">����</td>
					<td><%= bean.getPay() %></td>
				</tr>
				<tr>
					<td colspan="2">
						<a href="edit.jsp?empno=<%= bean.getEmpno() %>&ename=<%= bean.getEname() %>&pay=<%= bean.getPay() %>">����</a>
						<a href="delete.jsp">����</a>
					</td>
				</tr>
			</table>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>