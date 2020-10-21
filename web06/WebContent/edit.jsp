<%@page import="com.bit.web06_emp02.Emp02Update"%>
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
				<h1>����������</h1>
				<!-- content start -->
				<%
				boolean parsingError = false;
				
				request.setCharacterEncoding("EUC-KR");
				String method = request.getMethod();
				if(method.equals("POST")) {
					String param1 = request.getParameter("empno");
					String param2 = request.getParameter("ename");
					String param3 = request.getParameter("pay");
					
					try {
						int empno = Integer.parseInt(param1.trim());
						String ename = param2.trim();
						int pay = Integer.parseInt(param3.trim());
						Emp02Update emp = new Emp02Update();
						emp.update(ename, pay, empno);
						response.sendRedirect("detail.jsp?idx=" + empno);
					} catch(NumberFormatException e) {
						parsingError = true;
						response.sendRedirect("edit.jsp?idx=" + param1 + "&parsErr=" + parsingError);
					}
					return;
				}
				String param1 = request.getParameter("idx");
				int empno = Integer.parseInt(param1);
				Emp02Detail emp = new Emp02Detail();
				Emp02Bean bean = emp.detail(empno);

				boolean parsErrorMsg = false;
				try {
					String param2 = request.getParameter("parsErr");
					parsErrorMsg = param2.equals("true") ? true : false;
				} catch(NullPointerException e) {
					// ù ���� �� �Ľ� ���� ����
				}
				%>
				<center>
					<form method="post">
						<table width="800" align="center">
							<tr>
								<td>���</td>
								<td><input type="text" name="empno" value="<%= bean.getEmpno() %>" readonly="readonly"></td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="ename" value="<%= bean.getEname() %>"></td>
							</tr>
							<tr>
								<td>��¥</td>
								<td><%= bean.getHiredate() %></td>
							</tr>
							<tr>
								<td>�ݾ�</td>
								<td><input type="text" name="pay" value="<%= bean.getPay() %>"></td>
							</tr>
							<tr>
								<td colspan="2">
									<%
									if(parsErrorMsg) {
									%>
									<p><font color="red">�Է� ����</font><p>
									<%	
									}
									%>
									<input type="submit" value="����">
								</td>
							</tr>
						</table>
					</form>
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