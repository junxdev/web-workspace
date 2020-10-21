<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ex01</title>
</head>
<body>
	<h1>pageContext Implicit Object</h1>
	<% 
		javax.servlet.jsp.JspWriter myOut = pageContext.getOut();
		myOut.println("pageContext를 활용한 out 객체 생성");
		
		String id = pageContext.getRequest().getParameter("id");
		myOut.println("id : " + id);
	%>
</body>
</html>