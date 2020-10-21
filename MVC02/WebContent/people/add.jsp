<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>INDEX</title>
		<link rel="stylesheet" type="text/css" href="../css/frame.css">
		<style type="text/css">
			#content > h2 {
				text-align: center;
			}
			#content > form {
				width: 600px;
				margin: 50px auto;
			}
			#content > form > div {
				margin-top: 10px;
				text-align: left;
			}
			#content > form > div > label {
				width: 100px;
				display: inline-block;
				border-bottom: 1px solid gray;
			}
			#content > form button {
				width: 50px;
			}
			#content > form span {
				display: none;
				color: red;
			}
			#err {
				background-color: red;
				height: 30px;
			}
			#err > span:FIRST-CHILD {
				background-color: red;
				float: right;
				margin: 5px;
				width: 10px;
				height: 10px;
				line-height: 10px;
				font-size: 20px;
				cursor: pointer;
			}
			#err > span:LAST-CHILD {
				background-color: red;
				clear: both;
			}
		</style>
		<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				if(<%= request.getAttribute("err") %>) {
					$('#err').children().eq(1).text(<%= request.getAttribute("err") %>);
					$('#err').show();
				} else {
					$('#err').hide();
				}
				$('#err > span:FIRST-CHILD').click(function() {
					$('#err').hide();
				});
				$('#content form button').eq(2).click(function() {
					window.history.back();
				});
				$('#content form').submit(function() {
					$('#err').hide();
					$(this).find('span').css('display', 'none');
					if($('#empno').val() == '') {
						$('#err').children().eq(1).text('Please fill in your number');
						$('#err').show();
						$('#empno').focus();
						$('#empno').next().css('display', 'inline');
						return false;
					} else if($('#ename').val() == '') {
						$('#err').children().eq(1).text('Please fill in your name');
						$('#err').show();
						$('#empno').focus();
						$('#ename').next().css('display', 'inline');
						return false;
					}  else if($('#job').val() == '') {
						$('#job').val('Supporter');
					} 
				});
			});
		</script>
	</head>
	<body>
		<div id="err">
			<span>x</span>
			<span>error message</span>
		</div>
		<div>
			<div id="header">
				<h1></h1>
			</div>
			<div id="menu">
				<ul>
					<li><a href="../index">HOME</a></li>
					<li><a href="../people">PEOPLE</a></li>
					<li><a href="#">DEPARTMENT</a></li>
					<li><a href="../login">LOG IN</a></li>
				</ul>
			</div>
			<div id="content">
				<h2>Welcome, new supporter!</h2>
				<form method="post" action="">
					<div>
						<label for="empno">Number</label>
						<input type="text" id="empno" name="empno">
						<span>Please fill in this field.</span>
					</div>
					<div>
						<label for="ename">Name</label>
						<input type="text" id="ename" name="ename">
						<span>Please fill in this field.</span>
					</div>
					<div>
						<label for="job">Job</label>
						<input type="text" id="job" name="job">
					</div>
					<div>
						<button type="submit">Join</button>
						<button type="reset">Reset</button>
						<button type="button">Back</button>
					</div>
				</form>
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