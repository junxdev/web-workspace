<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<%@ include file="../template/menu.jsp" %>
<% System.out.println(session.getAttribute("name")); %>
	<h1>안녕하세요</h1>
	<form action="result.jsp" method="post">
		<table>
			<tr>
				<td>ID </td>
				<td><input type="text" name="id"></td>
			</tr>
			<%
			try {
				if(request.getParameter("err").equals("1")) {
					%>
					<tr>
						<td></td>
						<td>존재하지 않는 ID입니다.</td>
					</tr>
					 <%
				}
			} catch(NullPointerException e) {
				// 첫 로그인 시 파라미터 부재 오류 방지
			}
			%>
			<tr>
				<td>PW </td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" bgcolor="#cccccc">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
					<input type="button" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
<%@ include file="../template/footer.jsp" %>
</body>
</html>