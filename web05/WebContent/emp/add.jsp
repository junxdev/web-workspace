<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP ADD</title>
</head>
<body>
	<%@ include file="../template/header.jsp" %>
	<%@ include file="../template/menu.jsp" %>
	<h1>�Է�</h1>
	<%
	String ename = request.getParameter("ename");
	System.out.println(ename);
	if(ename == null) ename = "";
	%>
	<form action="insert.jsp">
		<table>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="ename"></td>
				<!-- <td><input type="text" name="ename" value="<%= ename %>"></td> -->
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�Է�">
					<input type="reset" value="���">
				</td>
			</tr>
		</table>
	</form>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>