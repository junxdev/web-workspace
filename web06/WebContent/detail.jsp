<%@page import="com.bit.web06_emp02.dto.Emp02Bean"%>
<%@page import="com.bit.web06_emp02.Emp02Detail"%>
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
				<h1>��������</h1>
				<!-- content start -->
				<%
				String param = request.getParameter("idx");
				int empno = Integer.parseInt(param);
				Emp02Detail emp = new Emp02Detail();
				Emp02Bean bean = emp.detail(empno);
				%>
				<center>
					<table width="800" align="center">
						<tr>
							<td>���</td>
							<td><%= bean.getEmpno() %></td>
						</tr>
						<tr>
							<td>�̸�</td>
							<td><%= bean.getEname() %></td>
						</tr>
						<tr>
							<td>��¥</td>
							<td><%= bean.getHiredate() %></td>
						</tr>
						<tr>
							<td>�ݾ�</td>
							<td><%= bean.getPay() %></td>
						</tr>
						<tr>
							<td colspan="2">
								<a href="edit.jsp?idx=<%= bean.getEmpno() %>">����</a>
								<a href="delete.jsp?idx=<%= bean.getEmpno() %>">����</a>
							</td>
						</tr>
					</table>
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