<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! 
int x = 2;
int y = 1;
public String multi() {
	if(x > 9) {
		x = 2;
		y++;
	}
	if(y > 9) {
		y = 1;
	}
	return x + "*" + y + "=" + (x++ * y);
}
%>
	<h1 align="center">������ ���</h1>
	<table border="1 solid" width="500" align="center">
		<tr align="center">
			<td>2��</td>
			<td>3��</td>
			<td>4��</td>
			<td>5��</td>
			<td>6��</td>
			<td>7��</td>
			<td>8��</td>
			<td>9��</td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
		<tr align="center">
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
			<td><%= multi() %></td>
		</tr>
	</table>
</body>
</html>