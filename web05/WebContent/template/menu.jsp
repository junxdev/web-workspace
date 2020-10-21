<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<tr>
	<td align="center" bgcolor="gray" colspan="2">
		<font color="white">
			<a href="/web05/index.jsp">홈</a>
			<a href="/web05/emp/list.jsp">사원</a>
			<a href="/web05/dept/list.jsp">부서</a>
			<% if(obj == null) { %>
				<a href="/web05/login/form.jsp">로그인</a>
			<% } else {	%>
				<a href="/web05/login/logout.jsp">로그아웃</a>
			<% } %>
		</font>
	</td>
</tr>
<tr>
	<td colspan="2">
		<center>
		<!-- Content start -->