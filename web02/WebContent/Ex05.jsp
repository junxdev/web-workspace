<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Method : <%=request.getMethod() %></h1>
	<%
	java.util.Enumeration<String> names = null;
	names = request.getParameterNames();
	
	while(names.hasMoreElements()) {
		out.println("<h2>" + names.nextElement() + "</h2>");
	}
	
	java.util.Map<String, String[]> map = null; // value�� �迭�̶�� ���� ������ ���� ������ ���� �ִٴ� ��
	map = request.getParameterMap();
	
	java.util.Set<String> keyset = map.keySet();
	java.util.Iterator ite = keyset.iterator();
	
	while(ite.hasNext()) {
		String key = (String)ite.next();
		out.println("<h2>" + key + "</h2>");
		out.println(java.util.Arrays.toString(map.get(key)));
	}
	
	java.util.Enumeration enu = request.getHeaderNames();
	while(enu.hasMoreElements()) {
		out.println("<h2>" + request.getHeader(enu.nextElement().toString())  + "</h2>");
	}
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	// String animal = request.getParameter("animal")
	String[] animal = request.getParameterValues("animal");
	%>
	
	<p>id : <%= id %><br>pw : <%= pw %><br>animal : <%= java.util.Arrays.toString(animal) %></p>
	<p></p>
</body>
</html>