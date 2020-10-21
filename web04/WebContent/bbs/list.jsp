<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BBS LIST</title>
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
					<h1>�Խ���</h1>
					<p align="right"><a href="/web04/bbs/add.jsp">[�۾���]</a></p>
					<table width="90%" border="1" cellspacing="0">
						<tr align="center">
							<th width="80">�۹�ȣ</th>
							<th>����</th>
							<th width="100">�۾���</th>
							<th width="100">��¥</th>
						</tr>
						<%
							String key = request.getParameter("key");
							if(key == null) {
								key = "title";
							}
							String word = request.getParameter("word");
							if(word == null) {
								word = "";
							}
							String sql = "SELECT num, title, id, TO_CHAR(write_date, 'YYYY/MM/DD fmHH24:fmMI:fmSS'), reply_lv FROM bbs01 WHERE " + key + " LIKE '%" + word 
									+ "%' ORDER BY ref DESC, reply_num ASC";
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
								
								while(rs.next()) {
									int gap = rs.getInt(5);
									String msg = "";
									for(int i = 0; i < gap; i++) {
										msg += "&nbsp;&nbsp;&nbsp;";
									}
									if(gap != 0) msg += "��";
									%>
									<tr align="center">
										<td><%= rs.getInt(1) %></td>
										<td align="left"><%= msg %><a href="/web04/bbs/detail.jsp?idx=<%= rs.getString(1) %>"><%= rs.getString(2) %></a></td>
										<td><%= rs.getString(3) %></td>
										<td><%= rs.getString(4) %></td>
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
					<form action="/web04/bbs/list.jsp" method="get">
						<select name = "key">
							<option value="title">����</option>
							<option value="id">�۾���</option>
						</select>
						<input type="text" name="word">
						<input type="submit" value="�˻�">
					</form>
				</center>
			</td>
		</tr>
		
		<tr>
			<td></td>
			<td colspan="4">
				��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928<br>
				(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245<br>
				����Ǹž� �Ű��ȣ : �� ����-00098ȣ / ����������ȣ����å���� : ������<br>
				Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
			<td></td>
		</tr>
	</table>
</body>
</html>