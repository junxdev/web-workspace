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
		<h1>EMP LIST</h1>
		<h3 align="right"><a href="/web08/emp/add.jsp">등록</a></h3>
		<table width="800" border="1" bordercolor="#eee" cellspacing="0">
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>날짜</th>
				<th>금액</th>
			</tr>
			<%
			java.util.ArrayList<com.bit.emp.EmpDTO> list = com.bit.emp.EmpCRUD.list();
			for(int i = 0; i < list.size(); i++) {
			com.bit.emp.EmpDTO bean = list.get(i);
			%>
			<tr align="center">
				<td><%= bean.getEmpno() %></td>
				<td><a href="/web08/emp/detail.jsp?empno=<%= bean.getEmpno() %>"><%= bean.getEname() %></a></td>
				<td><%= bean.getHiredate() %></td>
				<td><%= bean.getPay() %></td>
			</tr>
			<%
			}
			%>
		</table>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>