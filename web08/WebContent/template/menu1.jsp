<%@page import="com.bit.dept.DeptDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%= request.getParameter("path") %>index.jsp">Ȩ</a>
				<a href="<%= request.getParameter("path") %>emp/list.jsp">���</a>
				<a href="<%= request.getParameter("path") %>dept/list.jsp">�μ�</a>
				<%
				DeptDTO user = (DeptDTO) session.getAttribute("login");
				if(user.isResult()) {
				%>
				<a href="<%= request.getParameter("path") %>account/logout.jsp">�α׾ƿ�</a>
				<%
				} else {
				%>
				<a href="<%= request.getParameter("path") %>account/login.jsp">�α���</a>
				<%
				}
				%>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<!-- content start -->
				