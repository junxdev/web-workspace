<%@page import="com.bit.web06_emp02.Emp02Insert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td colspan="4">
				<a href="/web06/">
					<img alt="" src="/web06/img/logo.png">
				</a>
			</td>
		</tr>
		<tr>
			<td bgcolor="gray" align="center">
				<a href="/web06/">Ȩ</a>
				<a href="/web06/list.jsp">����</a>
				<a href="#">�μ�</a>
				<a href="#">�α���</a>
			</td>
		</tr>
		<tr>
			<td>
				<!-- content start -->
						<center>
				<table width="800">
					<tr>
						<th width="120">���</th>
						<th width="120">�̸�</th>
						<th width="120">��¥</th>
						<th width="120">�ݾ�</th>
					</tr>
					<%
					com.bit.web06_emp02.Emp02List emp = null;
					emp = new com.bit.web06_emp02.Emp02List();
					java.util.List<com.bit.web06_emp02.dto.Emp02Bean> list = emp.list();
					for(int i = 0; i < list.size(); i++) {
						com.bit.web06_emp02.dto.Emp02Bean bean = list.get(i);
					%>
					<tr align="center">
						<td><%= bean.getEmpno() %></td>
						<td><a href="detail.jsp?idx=<%= bean.getEmpno()%>"><%= bean.getEname() %></a></td>
						<td><%= bean.getHiredate() %></td>
						<td><%= bean.getPay() %></td>
					</tr>
					<%
					}
					%>
				</table>
				<p>
					<a href="insert.jsp">���</a>
				</p>
						</center>
				<!-- content end -->
			</td>
		</tr>
		<tr>
			<td>
				����ڵ�Ϲ�ȣ : 120-81-84429 | ����Ǹž��Ű��ȣ : �� 2011-���ﰭ��-00810ȣ | ��ǥ�̻� : JUN PARK |<br>
				�ּ� : ���� Ư���� ������ ������� 517 | ��ǥ��ȭ : 02-6712-6700 | �ѽ� : 02-6928-0000<br>
				Copyright @ 2020 Apple Inc. ��� �Ǹ� ����.
			</td>
		</tr>
	</table>

</body>
</html>