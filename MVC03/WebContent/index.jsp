<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RED MOTORCYCLE CLUB</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
	#content {
		text-align: center;
	}
</style>
<script type="text/javascript">
	var img;
	var cnt = 0;
	function next() {
		cnt++;
		if(cnt == 7) cnt = 1;
		img.attr('src', 'css/img/wide' + cnt + '.jpg');
		setTimeout(next, 1000);
	}
	$(function() {
		img = $('<img/>').appendTo('#content');
		next();
	})
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<!-- content start -->
	<!-- content end -->
<%@ include file="template/footer.jspf" %>
</body>
</html>