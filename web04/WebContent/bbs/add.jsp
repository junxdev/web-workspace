<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BBS ADD</title>
</head>
<body>
	<table width="1024" align="center">
		<tr>
			<td colspan="6"><a href="/web04"><img src="https://www.bitcamp.co.kr/images/logo.png"></a></td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">&nbsp;</td>
			<td align="center" width="100" bgcolor="#cccccc"><a href="/web04">[HOME]</a></td>
			<td align="center" width="100" bgcolor="#cccccc"><a href="/web04/bbs/list.jsp">[BBS]</a></td>
			<td align="center" width="100" bgcolor="#cccccc"><a href="/web04/emp/list.jsp">[EMP]</a></td>
			<td align="center" width="100" bgcolor="#cccccc"><a href="/web04/login/form.jsp">[LOGIN]</a></td>
			<td bgcolor="#cccccc">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="6">
				<center>
					<h1>글쓰기</h1>
					<form action="insert.jsp" method="post">
						<table width="600" align="center">
							<tr>
								<td width="100">제목</td>
								<td><input type="text" name="title" size="60"></td>
							</tr>
							<tr>
								<td>글쓴이</td>
								<td><input type="text" name="id" size="60"></td>
							</tr>
							<tr>
								<td valign="top">내용</td>
								<!--
								<td><input type="text" name="content" size="60"></td>
								-->
								<td><textarea name="content" rows="20" cols="62"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="글쓰기">
									<input type="reset" value="취소">
								</td>
							</tr>
						</table>
					</form>
				</center>
			</td>
		</tr>
		
		<tr>
			<td></td>
			<td colspan="4">
				비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928<br>
				(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245<br>
				통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
				Copyright (c) 비트캠프 All rights reserved.
			</td>
			<td></td>
		</tr>
	</table>
</body>
</html>