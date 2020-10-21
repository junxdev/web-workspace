<%@page import="com.bit.model.JavaBean"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<h1>JSTL Repeat: forEach</h1>
	<%
		String[] msgs = {"banana", "apple", "peach", "kiwi"};
		pageContext.setAttribute("msgs", msgs);
		
		ArrayList<String> list = null;
		list = new ArrayList<String>();
		list.add("TIGER");
		list.add("DOG");
		list.add("CAT");
		list.add("ELEPHANT");
		pageContext.setAttribute("list", list);
		
		HashSet<String> set = new HashSet<String>();
		set.add("JAZZ");
		set.add("BLUES");
		set.add("ROCK");
		set.add("CLASSIC");
		pageContext.setAttribute("set", set);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("Korea", "Seoul");
		map.put("Japan", "Tokyo");
		map.put("China", "Beijing");
		map.put("Russia", "Moscow");
		pageContext.setAttribute("map", map);
		
		JavaBean bean = new JavaBean();
		bean.setGender('f');
		bean.setName("BEAN");
		bean.setNum(10);
		pageContext.setAttribute("bean", bean);
		%>
	<ol>
		<c:forEach items="${msgs }" step="2" varStatus="status">
		<li>${msgs[status.index] }</li>
		</c:forEach>
	</ol>
	<ul>
		<c:forEach var="o" items="${list }" varStatus="s">
		<li>${s.count }. ${list[s.index] }</li>
		</c:forEach>
	</ul>
	<ul>
		<c:forEach var="o" items="${set }" varStatus="s">
		<li>${s.count }. ${o }</li>
		</c:forEach>
	</ul>
	<ul>
		<c:forEach var="o" items="${map }" varStatus="s">
		<li>${s.count }. ${o.key }'s capital: ${o.value }</li>
		</c:forEach>
	</ul>
	<dl>
		<dt>Name</dt>
		<dd>${bean.name }</dd>
		<dt>Number</dt>
		<dd>${bean.num }</dd>
		<dt>Gender</dt>
		<dd>${bean.gender }</dd>
	</dl>
</body>
</html>