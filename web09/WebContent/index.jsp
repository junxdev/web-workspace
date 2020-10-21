<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Main</title>
</head>
<body>
	<table width="1024" align="center">
		<tr>
			<td><img src="img/logo.png"></td>
		</tr>
		<tr>
			<td bgcolor="#ccc" align="center">
				<a href="?title=main">홈</a>
				<a href="?title=intro">소개</a>
				<a href="?title=emp/list">사원</a>
				<a href="account/login.jsp">로그인</a>
			</td>
		</tr>
		<tr>
			<td>
				<center>
					<%
					String title = request.getParameter("title");
					if(title == null) title="main"; 
					title += ".jsp";
					%>
					<!-- content start -->
					<jsp:include page="<%= title %>"></jsp:include>
					<!-- content end -->
				</center>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ccc" align="center">
			사업자등록번호 : 120-81-84429 | 통신판매업신고번호 : 제 2011-서울강남-00810호 | 대표이사 : JUN PARK |<br>
			주소 : 서울 특별시 강남구 영동대로 517 | 대표전화 : 02-6712-6700 | 팩스 : 02-6928-0000<br>
			Copyright @ 2020 Apple Inc. 모든 권리 보유.
			</td>
		</tr>
	</table>
</body>
</html>