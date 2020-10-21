<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 출력</h1>
	<table align="center" border="1">
		<tr>
			<%
			for(int i = 2; i < 10; i++) {
				out.write("<td>");
				out.print(i + "단");
				out.println("</td>");
			}
			%>
		</tr>
		<tr>
			<% 
			for(int i = 1; i < 10; i++) {
				out.print("<tr>"); // out 내장 객체: html 출력
				for(int j = 2; j < 10; j++) {
					out.print("<td>");
					out.print(i + " * " + j + " = " + (i * j));
					out.println("</td>");
				}
				out.println("</tr>");
			}
			%>
		</tr>
	</table>
</body>
</html>