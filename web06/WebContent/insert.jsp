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
				<h1>�Է�������</h1>
				<center>
					<!-- content start -->
					<%
						if("POST".equals(request.getMethod())) {
							request.setCharacterEncoding("EUC-KR");
							int empno = Integer.parseInt(request.getParameter("empno"));
							String ename = request.getParameter("ename");
							int pay = Integer.parseInt(request.getParameter("pay"));
							
							Emp02Insert emp = new Emp02Insert();
							emp.insert(empno, ename, pay);
							response.sendRedirect("list.jsp");
							return;
						}
					%>
					<form action="insert.jsp" method="post">
						<table width="800" align="center">
							<tr>
								<td>���</td>
								<td><input type="text" name="empno"></td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="ename"></td>
							</tr>
							<tr>
								<td>�ݾ�</td>
								<td><input type="text" name="pay"></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="���">
								</td>
							</tr>
						</table>
					</form>
					<!-- content end -->
				</center>
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