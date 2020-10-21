<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<body>
	<%@ include file="/template/header.jspf" %>
	<h2>로그인 성공</h2>
	<p>안녕하세요, ${user.name }님</p>
	<p>${result }</p>
</body>
</html>