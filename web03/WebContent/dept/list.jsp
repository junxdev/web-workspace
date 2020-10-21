<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DEPT LIST</title>
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
			<h1>DEPT LIST</h1>
				<table border="1" width="600">
					<tr align="center">
						<td width="80">deptno</td>
						<td>dname</td>
						<td>loc</td>
						<td width="50">del</td>
					</tr>
					<%
					String sql = "SELECT * FROM dept ORDER BY deptno";
					String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
					String user = "scott";
					String password = "tiger";

					java.lang.Class.forName("oracle.jdbc.driver.OracleDriver");
					
					java.util.Properties info = new java.util.Properties();
					info.setProperty("user", user);
					info.setProperty("password", password);
					
					java.sql.Connection conn = null;
					java.sql.Statement stmt = null;
					java.sql.ResultSet rs = null;

					try{
						conn = java.sql.DriverManager.getConnection(url, info);
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							%>
							<tr align="center">
								<td><%= rs.getInt(1) %></td>
								<td><%= rs.getString(2) %></td>
								<td><%= rs.getString(3) %></td>
								<td>
									<form action="delete.jsp" method="post"> <!-- anchor tag는 주소에 parameter 포함 강제 -->
										<input type="hidden" name="deptno" value="<%= rs.getInt(1) %>">
										<input type="submit" value="Delete">
									</form>
								</td>
							</tr>
							<%
						}
					} catch(java.lang.Exception e) {
						e.printStackTrace();
					} finally {
						if(rs != null) rs.close();
						if(stmt != null) stmt.close();
						if(conn != null) conn.close();
					}
					%>
				</table>
				<a href="add.jsp">[ADD]</a>
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