<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content {}
	#content > h2 {
		color: white;
		text-align: center;
	}
	#content > form {
		width: 500px;
		margin: 10px auto;
	}
	#content > form > div > label {
		width: 200px;
		display: inline-block;
		color: white;
	}
	#content > form > div {
		height: 30px;
		line-height: 30px;
		text-align: center;
	}
	#content > form > div > input {
		color: white;
	}
	#content > form > div > button {
		width: 50px;
		color: white;
	}
	#content > form > div:first-child~div{
		border-top: 1px solid gray;
	}
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>Next Location!</h2>
	<form method="post">
		<div>
			<label for="dname">Campaign</label>
			<input type="text" name="dname" id="dname">
		</div>
		<div>
			<label for="loc">City</label>
			<input type="text" name="loc" id="loc">
		</div>
		<div>
			<button type="submit">Submit</button>
			<button type="reset">Reset</button>
			<button type="button" onclick="history.back()">Back</button>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>

</body>
</html>