<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('button').click(function() {
			var param = 'msg=' + $('input').val();
			if($(this).text() == 'GET') {
				//$.get('ex08');
				$.ajax('ex08?' + param, {
					'method' : 'get'
				});
			} else if($(this).text() == 'POST') {
				//$.post('ex08');
				$.ajax('ex08', {
					'method' : 'post',
					'data' : param
				});
			} else if($(this).text() == 'PUT') {
				$.ajax('ex08', {
					'method' : 'put',
					'data' : param
				});
			} else if($(this).text() == 'DELETE') {
				$.ajax('ex08', {
					'method' : 'delete',
					'data' : param
				});
			}
		});		
	});
</script>
</head>
<body>
	<h1>METHOD</h1>
	<input type="text">
	<button>GET</button>
	<button>POST</button>
	<button>PUT</button>
	<button>DELETE</button>
</body>
</html>