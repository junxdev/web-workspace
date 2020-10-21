<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DEPT ADD</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td colspan="6"><a href="../index.jsp"><img src="../img/logo.png"></a></td>
		</tr>
		<tr align="center">
			<td bgcolor="gray"></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../index.jsp">[HOME]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="list.jsp">[DEPT]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../emp/list.jsp">[EMP]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../account/login.jsp">[LOGIN]</a></td>
			<td bgcolor="gray"></td>
		<tr>
			<td colspan="6">
			<!-- content start -->
			<center>
			<h1>DEPT ADD</h1>
			<form action="insert.jsp">
				<table>
					<tr>
						<td>deptno : </td>
						<td><input type="text" name="deptno"></td>
					</tr>
					<tr>
						<td>dname : </td>
						<td><input type="text" name="dname"></td>
					</tr>
					<tr>
						<td>loc : </td>
						<td><input type="text" name="loc"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="Add">
							<input type="reset" value="Cancel">
						</td>
					</tr>
				</table>
			</form>
			<!-- content end -->
			</center>
			</td>
		</tr>
		<tr>
			<td colspan="6" bgcolor="gray" align="center">
			비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928<br>
			(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245<br>
			통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
			Copyright (c) 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>