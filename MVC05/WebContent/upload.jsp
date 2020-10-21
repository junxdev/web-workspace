<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<body>
	<%@ include file="/template/header.jspf" %>
	<h1>Upload</h1>
	<form action="upload.bit" method="post" enctype="multipart/form-data">
		<div>
			<label for="num">num</label>
			<input type="text" id="num" name="num">
		</div>
		<div>
			<label for="file1">file</label>
			<input type="file" id="file1" name="file1">
		</div>
		<div>
			<button type="submit">Upload</button>
		</div>
	</form>
</body>
</html>