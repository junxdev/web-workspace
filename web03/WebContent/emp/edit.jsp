<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP EDIT</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td colspan="6"><a href="../index.jsp"><img src="../img/logo.png"></a></td>
		</tr>
		<tr align="center">
			<td bgcolor="gray"></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../index.jsp">[HOME]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../dept/list.jsp">[DEPT]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="list.jsp">[EMP]</a></td>
			<td bgcolor="#aaaaaa" width="120"><a href="../account/login.jsp">[LOGIN]</a></td>
			<td bgcolor="gray"></td>
		<tr>
			<td colspan="6">
			<!-- content start -->
			<center>
				<h1>EMP EDIT</h1>
				<form action="update.jsp" method="get">
				<table border="0" width="600" cellspacing="1">
					<%
					String empno = request.getParameter("empno");
					String sql = "SELECT a.empno, a.ename, a.job, a.mgr, a.hiredate, a.sal, a.comm,";
					sql += "(SELECT d.dname FROM dept d WHERE a.deptno = d.deptno) FROM emp a WHERE a.empno = " + empno;
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
						int count = 0;
						String bg = null;
						while(rs.next()) {
								%>
								<tr align="center">
									<td bgcolor="#aaaaaa">EMPNO</td>
									<td><input type="text" name="empno" value="<%= rs.getInt(1) %>" readonly="readonly"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">ENAME</td>
									<td><input type="text" name="ename" value="<%= rs.getString(2) %>"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">JOB</td>
									<td><input type="text" name="job" value="<%= rs.getString(3) %>"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">MGR</td>
									<td><input type="text" name="mgr" value="<%= rs.getInt(4) %>"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">HIREDATE</td>
									<td><% if(rs.getDate(5) != null) {
											out.print(rs.getDate(5));
										} else {
											out.print("No Data");
										}
										%>
									</td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">SAL</td>
									<td><input type="text" name="sal" value="<%= rs.getInt(6) %>"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">COMM</td>
									<td><input type="text" name="comm" value="<%= rs.getInt(7) %>"></td>
								</tr>
								<tr align="center">
									<td bgcolor="#aaaaaa">DNAME</td>
									<td><%= rs.getString(8) %></td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input type="submit" value="OK">
										<input type="reset" value="Cancel">
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