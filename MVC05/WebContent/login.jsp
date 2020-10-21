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
	<h1>로그인</h1>
	<form method="post">
		<div>
			<label for="sabun">사번</label>
			<input type="text" id="sabun" name="sabun">
		</div>
		<div>
			<label for="name">이름</label>
			<input type="text" id="name" name="name">
		</div>
		<div>
			<input type="submit" value="로그인">
			<input type="reset" value="취소">
		</div>
	</form>
</body>
</html>