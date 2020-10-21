<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.dept.DeptDTO"%>
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
	<% 
	// page(default) < request < session < application
	%>
	<jsp:useBean id="vo" class="com.bit.emp.EmpDTO" scope="request"></jsp:useBean>
	<jsp:setProperty property="ename" name="vo" value="abc"/>
	<jsp:include page="/template/header1.jsp">
	 	<jsp:param value="../" name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu1.jsp">
	 	<jsp:param value="../" name="path"/>
	</jsp:include>
	<h1>DEPT LIST</h1>
		<table>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>등급</th>
			</tr>
			<%
			ArrayList<DeptDTO> list = DeptCRUD.list();
			for(DeptDTO bean : list) {
			%>
			<tr>
				<td><%= bean.getDeptno() %></td>
				<td><%= bean.getId() %></td>
				<td><%= bean.getName() %></td>
				<td><%= bean.getGrade() %></td>
			</tr>
			<%
			}
			%>
		</table>
		<a href="add.jsp">입력</a>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>