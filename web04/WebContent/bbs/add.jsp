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
					<h1>�۾���</h1>
					<form action="insert.jsp" method="post">
						<table width="600" align="center">
							<tr>
								<td width="100">����</td>
								<td><input type="text" name="title" size="60"></td>
							</tr>
							<tr>
								<td>�۾���</td>
								<td><input type="text" name="id" size="60"></td>
							</tr>
							<tr>
								<td valign="top">����</td>
								<!--
								<td><input type="text" name="content" size="60"></td>
								-->
								<td><textarea name="content" rows="20" cols="62"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit" value="�۾���">
									<input type="reset" value="���">
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