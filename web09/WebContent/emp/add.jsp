<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP ADD</title>
</head>
<body>
	<h1>EMP ADD</h1>
	<form action="emp/insert.jsp">
		<table width="800">
			<tr>
				<td>���</td>
				<td><input type="text" name="empno"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="ename"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="���">
					<input type="reset" value="�ʱ�ȭ">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>