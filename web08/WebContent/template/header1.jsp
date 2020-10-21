<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="vo" class="com.bit.emp.EmpDTO" scope="request"></jsp:useBean>
    <jsp:useBean id="login" class="com.bit.dept.DeptDTO" scope="session"></jsp:useBean>
	<table width="1024" align="center">
			<tr>
				<td>
					<jsp:getProperty property="ename" name="vo"/>
					<table>
						<tr>
							<td><a href="/web08/index.jsp"><img alt="" src="<%= request.getParameter("path") %>img/logo.png"></a></td>
							<td align="right"><jsp:getProperty property="name" name="login"/></td>
						</tr>
					</table>
					
				</td>
			</tr>