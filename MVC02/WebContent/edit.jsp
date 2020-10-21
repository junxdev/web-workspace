<%@page import="com.bit.model.EmpDTO"%>
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
			#content > form > div:last-child > button {
				display: inline-block;
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
			#content > table~a:hover {
				background-image: linear-gradient(gray, darkgray, gray);
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#content > form > div:last-child > button').last().click(function() {
					history.back();
					return false;
				});
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
				<jsp:useBean id="dto" class="com.bit.model.EmpDTO" scope="request"></jsp:useBean>
				<h2><jsp:getProperty property="ename" name="dto"/>'s information</h2>
				<form method="post">
					<div>
						<label for="empno">Number</label>
						<input type="text" id="empno" name="empno" value=<jsp:getProperty property="empno" name="dto"/> readonly="readonly">
					</div>
					<div>
						<label for="ename">Name</label>
						<input type="text" id="ename" name="ename" value=<jsp:getProperty property="ename" name="dto"/> readonly="readonly">
					</div>
					<div>
						<label for="job">Job</label>
						<input type="text" id="job" name="job" value=<jsp:getProperty property="job" name="dto"/>>
					</div>
					<div>
						<label for="mgr">Manager</label>
						<input type="text" id="mgr" name="mgr" value=<jsp:getProperty property="mgr" name="dto"/>>
					</div>
					<div>
						<label for="sal">Salary</label>
						<input type="text" id="sal" name="sal" value=<jsp:getProperty property="sal" name="dto"/>>
					</div>
					<div>
						<label for="comm">Commission</label>
						<input type="text" id="comm" name="comm" value=<jsp:getProperty property="comm" name="dto"/>>
					</div>
					<div>
						<label for="deptno">Department</label>
						<input type="text" id="deptno" name="deptno" value=<jsp:getProperty property="deptno" name="dto"/> readonly="readonly">
					</div>
					<div>
						<button type="submit">Edit</button>
						<button type="reset">Reset</button>
						<button type="button">Back</button>
					</div>
				</form>
				<!-- 
				<%
				//EmpDTO dto = (EmpDTO) request.getAttribute("dto");
				%>
				<h2><%//= dto.getEname() %></h2>
				<table>
					<tr>
						<th>Number</th>
						<th>Job</th>
						<th>Since</th>
					</tr>
					<tr>
						<td><%//= dto.getEmpno() %></td>
						<td><%//= dto.getJob() %></td>
						<td><%//= dto.getMgr() %></td>
						<td><%//= dto.getHiredate() %></td>
						<td><%//= dto.getSal() %></td>
						<td><%//= dto.getComm() %></td>
						<td><%//= dto.getDeptno() %></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				 -->
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