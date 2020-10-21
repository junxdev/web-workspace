<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String path = "../";
	%>
	<%@ include file="../template/header.jsp" %>
	<%@ include file="../template/menu.jsp" %>
		<h1>EMP EDIT</h1>
		<jsp:useBean id="bean" class="com.bit.emp.EmpDTO"></jsp:useBean>
		<!-- 
		<jsp:setProperty property="empno" name="bean"/>
		<jsp:setProperty property="ename" name="bean"/>
		<jsp:setProperty property="pay" name="bean"/>
		 -->
		<jsp:setProperty property="*" name="bean"/>
		<form action="update.jsp" method="post">
			<table>
				<tr>
					<td>사번</td>
					<td><input type="text" name="empno" value="<%= bean.getEmpno() %>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="ename" value="<%= bean.getEname() %>"></td>
				</tr>
				<tr>
					<td>연봉</td>
					<td><input type="text" name="pay" value="<%= bean.getPay() %>"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>