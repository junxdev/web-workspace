<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h1 + p {
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	var xhr;
	var result;
	var cnt = 1;
	function io() {
		xhr = new XMLHttpRequest(); // 통신 객체
		xhr.onreadystatechange = function() {
			console.log(cnt++ + ' : ' + xhr.readyState + ' : ' + xhr.responseText);
			if(xhr.readyState == 4) { // 4; Done
				if(xhr.status == 200) { // 200; OK
					var msg = xhr.responseText;
					result.innerHTML = msg;
				}
//			} else if(xhr.status == 404) {
//				result.innerText = '페이지 없음';
//			} else {
	//			alert('ERROR');
			}
		}
		xhr.open('get', 'ex01.jsp'); // 통신 정보
		xhr.send(); // 통신 실행
	};
	window.onload = function() {
		result = document.querySelector('h1 + p');
		result.onclick = function() {
			// window.location.href = 'ex01.html';
			io();
		};
	};
</script>
</head>
<body>
	<h1>자바스크립트 통신</h1>
	<p>MOVE</p>
	<p><a href="ex01.jsp">link</a></p>
	<p>자바스크립트의 기본 통신방식은 비동기 통신입니다.</p>
</body>
</html>