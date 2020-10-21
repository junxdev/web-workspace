<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, com.bit.model.DeptDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DEPARTMENT</title>
</head>
<body>
	<h1>DEPARTMENT</h1>
	<table>
		<tr>
			<th>NUMBER</th>
			<th>NAME</th>
			<th>LOCATION</th>
		</tr>
		<%
		List<DeptDTO> list = (List<DeptDTO>) request.getAttribute("alist");	
		for(int i = 0; i < list.size(); i++) {
			DeptDTO dto = list.get(i);
		%>
		<tr>
			<td><%= dto.getDeptno() %></td>
			<td><%= dto.getDname() %></td>
			<td><%= dto.getLoc() %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>