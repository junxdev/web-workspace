<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP ADD</title>
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
			<h1>DEPT ADD</h1>
			<form action="insert.jsp">
				<table>
					<tr>
						<td>EMPNO : </td>
						<td><input type="text" name="empno"></td>
					</tr>
					<tr>
						<td>ENAME : </td>
						<td><input type="text" name="ename"></td>
					</tr>
					<tr>
						<td>JOB : </td>
						<td><input type="text" name="job"></td>
					</tr>
					<tr>
						<td>DNAME : </td>
						<td>
							<select name="deptno">
							<%
								String sql = "SELECT deptno, dname FROM dept ORDER BY dname";
								String driver = "oracle.jdbc.driver.OracleDriver";
								String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
								String user = "scott";
								String password = "tiger";
								
								java.lang.Class.forName(driver);
								java.sql.Connection conn = null;
								java.sql.Statement stmt = null;
								java.sql.ResultSet rs = null;
								
								try {
									conn = java.sql.DriverManager.getConnection(url, user, password);
									stmt = conn.createStatement();
									rs = stmt.executeQuery(sql);
									while(rs.next()) {
										%>
										<option value="<%=rs.getInt(1) %>"><%=rs.getString(2) %></option>
										<%
									}
								} finally {
									if(rs == null) rs.close();
									if(stmt == null) stmt.close();
									if(conn == null) conn.close();
								}
							%>
							</select>
						</td>
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
			��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928<br>
			(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245<br>
			����Ǹž� �Ű��ȣ : �� ����-00098ȣ / ����������ȣ����å���� : ������<br>
			Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>