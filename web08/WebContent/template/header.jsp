<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="login" class="com.bit.dept.DeptDTO" scope="session"></jsp:useBean>
	<table width="1024" align="center">
			<tr>
				<td>
					<table>
						<tr>
							<td><a href="/web08/index.jsp"><img alt="" src="<%= path %>img/logo.png"></a></td>
							<td align="right"><jsp:getProperty property="name" name="login"/></td>
						</tr>
					</table>
				</td>
			</tr>