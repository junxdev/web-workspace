<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">구구단 출력</h1>
	<table border="1" width="1000" height="1000" align="center">
		<%
			String title = "<tr align=\"center\"> \n";
			for(int i = 2; i < 10; i++) {
				title += "\t\t\t<td>" + i + "단 </td>\n";
			}
			title += "\t\t</tr>\n";
		%>
		<%= title %>
		<% 
			String msg = "";
			for(int i = 1; i < 10; i++) {
				if(i > 1) msg += "\t\t";
				msg += "<tr align=\"center\">\n";
				for(int j = 2; j < 10; j++) {
					msg += "\t\t\t<td> " + j + " x " + i + " = " + (i * j) + " </td>\n"; 
				}
				msg += "\t\t</tr>\n";
			}
		%>
		<%= msg %>
	</table>
</body>
</html>