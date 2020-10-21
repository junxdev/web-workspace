<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>INDEX</title>
		<link rel="stylesheet" type="text/css" href="css/frame.css">
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('<img/>').attr('src', 'img/wide2.jpg').insertAfter('#content > img')
				.after($('<img/>').attr('src', 'img/wide3.jpg'));
			})
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
				<img alt="wide" src="img/wide1.jpg">
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