<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content > h2 {
		text-align: center;
		color: white;
	}
	#content > form {
		width: 500px;
		margin: 0px auto;
	}
	#content > form > div {
		text-align: center;
	}
	}
	#content > form > div:first-child~div {
		border-top: 1px solid white;
	}
	#content > form > div > label {
		width: 200px;
		display: inline-block;
		color: white;
	}
	#content > form > div > input {
		border-width: 0px;
		color: white;
	}
	#content > form > div > button {
		width: 50px;
		color: white;
	}
</style>
<script type="text/javascript">
	$(function() {
		$('#dname, #loc').prop('readonly', true);
		$(document).one('submit', 'form', function() {// 미래에 생성되는 element에도 event-binding
			$('#dname, #loc').prop('readonly', false);
			$('form').find('button').eq(1).text('Cancel');
			$(document).off('reset', 'form', del);
			$('form').find('input').css('border-width', '1px');
			$('#dname').focus();
			var x = $('h2').text();
			$('h2').text(x + ': Edit');
			return false
		});
		$(document).on('reset', 'form', del);
	});
	function del() {
		alert('delete')
		return false;
	}
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="./template/menu.jspf" %>
	<h2>${dto.loc }</h2>
	<form method="post">
		<div>
			<label for="deptno">No.</label>
			<input type="text" name="deptno" id="deptno" value="${dto.deptno }" readonly="readonly">
		</div>
		<div>
			<label for="dname">Campaign</label>
			<input type="text" name="dname" id="dname" value="${dto.dname }">
		</div>
		<div>
			<label for="loc">Location</label>
			<input type="text" name="loc" id="loc" value="${dto.loc }">
		</div>
		<div>
			<button type="submit">Edit</button>
			<button type="reset">Delete</button>
			<button type="button" onclick="history.back()">Back</button>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>