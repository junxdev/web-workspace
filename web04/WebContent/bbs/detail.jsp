<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BBS DETAIL</title>
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
					<h1>게시판</h1>
					<p align="right"><a href="/web04/bbs/add.jsp">[글쓰기]</a></p>
					<table width="90%" border="1" cellspacing="0">
						<%
							String num = request.getParameter("idx");
						
							String sql = "SELECT num, title, TO_CHAR(write_date, 'YYYY/MM/DD fmHH24:fmMI:fmSS'), "
									+ "id, content, ref, reply_num, reply_lv FROM bbs01 WHERE num = " + num;
							String driver = "oracle.jdbc.driver.OracleDriver";
							String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
							String user = "scott";
							String password = "tiger";
							
							java.lang.Class.forName(driver);
							
							Connection conn = null;
							Statement stmt = null;
							ResultSet rs = null;
							
							try {
								conn = DriverManager.getConnection(url, user, password);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								
								if(rs.next()) {
									%>
									<tr align="center">
										<th width="80">글번호</th>
										<td><%= rs.getInt(1) %></td>
										<th width="100">글쓴이</th>
										<td><%= rs.getString(4) %></td>
										<th width="100">날짜</th>
										<td><%= rs.getString(3) %></td>
									</tr>
									<tr align="center">
										<th>제목</th>
										<td colspan="5">  <%= rs.getString(2) %></td>
									</tr>
									<tr>
										<td colspan="6"><%= rs.getString(5) %></td>
									</tr>
									<tr>
										<td colspan="6">
											<a href="/web04/bbs/edit.jsp?idx=<%= rs.getInt(1) %>">수정</a>
											<a href="/web04/bbs/delete.jsp?idx=<%= rs.getInt(1) %>">삭제</a>
											<a href="/web04/bbs/reply.jsp?ref=<%= rs.getInt(6) %>&reply_num=<%= rs.getInt(7) %>&reply_lv=<%= rs.getInt(8) %>">답글</a>
											<a href="/web04/bbs/list.jsp">목록</a>
										</td>
									</tr>
									<%
								}
							} finally {
								if(rs != null) rs.close();
								if(stmt != null) stmt.close();
								if(conn != null) conn.close();
							}
						%>
					</table>
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