<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Main</title>
</head>
<body>
	<table width="1024" align="center">
		<tr>
			<td><img src="img/logo.png"></td>
		</tr>
		<tr>
			<td bgcolor="#ccc" align="center">
				<a href="?title=main">Ȩ</a>
				<a href="?title=intro">�Ұ�</a>
				<a href="?title=emp/list">���</a>
				<a href="account/login.jsp">�α���</a>
			</td>
		</tr>
		<tr>
			<td>
				<center>
					<%
					String title = request.getParameter("title");
					if(title == null) title="main"; 
					title += ".jsp";
					%>
					<!-- content start -->
					<jsp:include page="<%= title %>"></jsp:include>
					<!-- content end -->
				</center>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ccc" align="center">
			����ڵ�Ϲ�ȣ : 120-81-84429 | ����Ǹž��Ű��ȣ : �� 2011-���ﰭ��-00810ȣ | ��ǥ�̻� : JUN PARK |<br>
			�ּ� : ���� Ư���� ������ ������� 517 | ��ǥ��ȭ : 02-6712-6700 | �ѽ� : 02-6928-0000<br>
			Copyright @ 2020 Apple Inc. ��� �Ǹ� ����.
			</td>
		</tr>
	</table>
</body>
</html>