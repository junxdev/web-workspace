<%@page import="com.bit.dept.DeptDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%= path %>index.jsp">Ȩ</a>
				<a href="<%= path %>emp/list.jsp">���</a>
				<a href="<%= path %>dept/list.jsp">�μ�</a>
				<%
				DeptDTO user = (DeptDTO) session.getAttribute("login");
				if(user.isResult()) {
				%>
				<a href="<%= path %>account/logout.jsp">�α׾ƿ�</a>
				<%
				} else {
				%>
				<a href="<%= path %>account/login.jsp">�α���</a>
				<%
				}
				%>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<!-- content start -->
				