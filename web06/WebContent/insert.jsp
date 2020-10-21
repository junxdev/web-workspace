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
				<h1>입력페이지</h1>
				<center>
					<!-- content start -->
					<%
						if("POST".equals(request.getMethod())) {
							request.setCharacterEncoding("EUC-KR");
							int empno = Integer.parseInt(request.getParameter("empno"));
							String ename = request.getParameter("ename");
							int pay = Integer.parseInt(request.getParameter("pay"));
							
							Emp02Insert emp = new Emp02Insert();
							emp.insert(empno, ename, pay);
							response.sendRedirect("list.jsp");
							return;
						}
					%>
					<form action="insert.jsp" method="post">
						<table width="800" align="center">
							<tr>
								<td>사번</td>
								<td><input type="text" name="empno"></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" name="ename"></td>
							</tr>
							<tr>
								<td>금액</td>
								<td><input type="text" name="pay"></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="등록">
								</td>
							</tr>
						</table>
					</form>
					<!-- content end -->
				</center>
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