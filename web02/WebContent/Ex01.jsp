<!-- @ ; page directive
import
information
type... -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! // !
// �����; Declaration
// Method, Function, Field...
// ��ũ��Ʈ��, ǥ���Ŀ��� ����� �Լ� �ۼ�
// ���� ��ü(request, out...) ����� �Ұ���

int a = 10;

int func01() {
	System.out.println("func01 run");
	return 999;
}
%>
	<h1><%= new Date() %> Scriptlet</h1>
	<% // Scriptlet
	int a = 100;
	int b = 20;
	int c = a + b;
	System.out.println(c);
	java.util.Date date = new java.util.Date();
	System.out.println(date);
	System.out.println(a + this.func01());
	%>
	<!-- = x; System.out.println(x) -->
	<%=this.a%>
</body>
</html>