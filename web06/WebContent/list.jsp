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
				<a href="/web06/">홈</a>
				<a href="/web06/list.jsp">직원</a>
				<a href="#">부서</a>
				<a href="#">로그인</a>
			</td>
		</tr>
		<tr>
			<td>
				<!-- content start -->
						<center>
				<table width="800">
					<tr>
						<th width="120">사번</th>
						<th width="120">이름</th>
						<th width="120">날짜</th>
						<th width="120">금액</th>
					</tr>
					<%
					com.bit.web06_emp02.Emp02List emp = null;
					emp = new com.bit.web06_emp02.Emp02List();
					java.util.List<com.bit.web06_emp02.dto.Emp02Bean> list = emp.list();
					for(int i = 0; i < list.size(); i++) {
						com.bit.web06_emp02.dto.Emp02Bean bean = list.get(i);
					%>
					<tr align="center">
						<td><%= bean.getEmpno() %></td>
						<td><a href="detail.jsp?idx=<%= bean.getEmpno()%>"><%= bean.getEname() %></a></td>
						<td><%= bean.getHiredate() %></td>
						<td><%= bean.getPay() %></td>
					</tr>
					<%
					}
					%>
				</table>
				<p>
					<a href="insert.jsp">등록</a>
				</p>
						</center>
				<!-- content end -->
			</td>
		</tr>
		<tr>
			<td>
				사업자등록번호 : 120-81-84429 | 통신판매업신고번호 : 제 2011-서울강남-00810호 | 대표이사 : JUN PARK |<br>
				주소 : 서울 특별시 강남구 영동대로 517 | 대표전화 : 02-6712-6700 | 팩스 : 02-6928-0000<br>
				Copyright @ 2020 Apple Inc. 모든 권리 보유.
			</td>
		</tr>
	</table>

</body>
</html>