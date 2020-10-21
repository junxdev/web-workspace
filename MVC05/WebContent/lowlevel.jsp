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
	<h2>이런! ${user.name }님의 권한이 부족합니다.</h2>
	<p>계정을 확인해주세요!</p>
</body>
</html>