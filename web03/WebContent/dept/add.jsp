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
			��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928<br>
			(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245<br>
			����Ǹž� �Ű���ȣ : �� ����-00098ȣ / ����������ȣ����å���� : ������<br>
			Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>