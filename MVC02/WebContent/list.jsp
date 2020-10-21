<%@page import="com.bit.model.EmpDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>INDEX</title>
		<link rel="stylesheet" type="text/css" href="css/frame.css">
		<style type="text/css">
			#content > table {
				width: 500px;
				margin: 50px auto;
				border-collapse: collapse;
			}
			#content > table > tr {}
			#content > table tr > th, #content > table tr > td {
				text-align: center;
				border: 1px solid gray;
			}
			#content > table + a {
				display: block;
				width: 150px;
				height: 50px;
				background-image: linear-gradient(darkgray, gray, darkgray);
				border-radius: 25px;
				margin: 0px auto;
				text-decoration: none;
				text-align: center;
				line-height: 50px;
				color: white;
			}
			#content > table + a:hover {
				background-image: linear-gradient(gray, darkgray, gray);
			}
			#content table tr:first-child {
				cursor: pointer;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('table tr').first().siblings().click(function() {
					var empno = $(this).children().first().text();
					location.href = 'detail?idx=' + empno;
				})
			});
		</script>
	</head>
	<body>
		<div>
			<div id="header">
				<h1></h1>
			</div>
			<div id="menu">
				<ul>
					<li><a href="index">HOME</a></li>
					<li><a href="people">PEOPLE</a></li>
					<li><a href="#">DEPARTMENT</a></li>
					<li><a href="login">LOG IN</a></li>
				</ul>
			</div>
			<div id="content">
				<h2>People who supports us</h2>
				<table>
					<tr>
						<th>Number</th>
						<th>Name</th>
						<th>Job</th>
						<th>Since</th>
					</tr>
					<%
					ArrayList<EmpDTO> list = (ArrayList<EmpDTO>) request.getAttribute("alist");
					//for(int i = 0; i < list.size(); i++) {
					//	EmpDTO dto = list.get(i);
					for(EmpDTO dto : list) {
					%>
					<tr>
						<td><%= dto.getEmpno() %></td>
						<td><%= dto.getEname() %></td>
						<td><%= dto.getJob() %></td>
						<td><%= dto.getHiredate() %></td>
					</tr>
					<%
					}
					%>
				</table>
				<a href="people/add">Join us!</a>
			</div>
			<div id="footer">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
			Mauris sed libero eleifend, rhoncus tortor nec, luctus urna. 
			Curabitur sit amet vehicula ante. Nulla vitae pulvinar velit, in convallis metus. 
			Donec id lacus at sapien dapibus finibus ut ut nulla. 
			Phasellus dolor ante, vehicula sed ultrices et, consequat in dolor. 
			In hac habitasse platea dictumst. Praesent interdum suscipit lacus, ut semper lacus pharetra nec. 
			Donec enim nisl, vulputate ac urna blandit, suscipit tristique nibh. 
			Vestibulum pharetra vel lacus a rhoncus.</div>
		</div>
	</body>
</html>