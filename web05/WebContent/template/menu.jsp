<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<tr>
	<td align="center" bgcolor="gray" colspan="2">
		<font color="white">
			<a href="/web05/index.jsp">Ȩ</a>
			<a href="/web05/emp/list.jsp">���</a>
			<a href="/web05/dept/list.jsp">�μ�</a>
			<% if(obj == null) { %>
				<a href="/web05/login/form.jsp">�α���</a>
			<% } else {	%>
				<a href="/web05/login/logout.jsp">�α׾ƿ�</a>
			<% } %>
		</font>
	</td>
</tr>
<tr>
	<td colspan="2">
		<center>
		<!-- Content start -->