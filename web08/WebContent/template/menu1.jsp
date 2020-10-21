<%@page import="com.bit.dept.DeptDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%= request.getParameter("path") %>index.jsp">홈</a>
				<a href="<%= request.getParameter("path") %>emp/list.jsp">사원</a>
				<a href="<%= request.getParameter("path") %>dept/list.jsp">부서</a>
				<%
				DeptDTO user = (DeptDTO) session.getAttribute("login");
				if(user.isResult()) {
				%>
				<a href="<%= request.getParameter("path") %>account/logout.jsp">로그아웃</a>
				<%
				} else {
				%>
				<a href="<%= request.getParameter("path") %>account/login.jsp">로그인</a>
				<%
				}
				%>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<!-- content start -->
				