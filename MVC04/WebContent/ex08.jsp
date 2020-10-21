<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#target').hide();
		var msg = $('.bx_midterm').find('.text').text();
		$('#result').text(msg)
	})
</script>
</head>
<body>
	<div id="target">
		<c:import url="https://www.weather.go.kr/weather/forecast/mid-term_02.jsp"></c:import>
	</div>
	<div id="result"></div>
</body>
</html>