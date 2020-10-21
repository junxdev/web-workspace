<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%@ include file="/template/header.jspf" %>
	<h2>Upload complete</h2>
	<a href="download.bit?file=${rename }&org=${original }">${original }</a>
</body>
</html>