<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>값 전달</h1>
	<form action="Ex05.jsp" method="get"> <!-- method default : get -->
		id<input type="text" name="id"><br>
		pw<input type="password" name="pw"><br>
		favorite animal<br>
		<input type="checkbox" name="animal" value="tiger"> tiger<br>
		<input type="checkbox" name="animal" value="cat"> cat<br>
		<input type="checkbox" name="animal" value="dog"> dog<br>
		<input type="checkbox" name="animal" value="wolf"> wolf<br>
		<input type="submit">
	</form>
</body>
</html>