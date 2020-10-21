<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<h1>EL</h1>
	<% 
		String msg = "pageContext.setAttribute";
		String msg2 = "What if mag2 is located in page context as well?";
		// page > request > session > application (ascend by length of life cycle)
		pageContext.setAttribute("msg", msg);
		//pageContext.setAttribute("msg2", msg2);
		
		String[] msgs = {"kiwi", "peach", "apple", "banana"};
		pageContext.setAttribute("msgs", msgs);
		
		java.util.ArrayList<String> list = new java.util.ArrayList<String>();
		list.add("tiger");
		list.add("dog");
		list.add("cat");
		pageContext.setAttribute("list", list);
		
		java.util.HashMap<String, Integer> map = null;
		map = new java.util.HashMap<String, Integer>();
		map.put("1", 111);
		map.put("2", 222);
		map.put("3", 333);
		pageContext.setAttribute("map", map);
	%>
	<h2>msg1(el) : ${msg }</h2>
	<h2>msg1(java) : <%= msg %></h2>
	<h3>page.scope.msg2(el) : ${msg2 }</h3>
	<h3>page.scope.msg2(java) : <%= pageContext.getAttribute("msg2") %></h3>
	<h3>request.scope.msg2(el) : ${requestScope.msg2 }</h3>
	<h3>request.scope.msg2(java) : <%= request.getAttribute("msg2") %></h3>
	<h3>if there's no attribute(el) : ${requestScope.msg3 }</h3>
	<h3>if there's no attribute(java) : <%= request.getAttribute("msg3") %></h3>
	<h3>Array(el) : ${msgs }</h3>
	<h3>Array(java) : <%= msgs %></h3>
	<ol>
		<li>${msgs[0] }</li>
		<li>${msgs[1] }</li>
		<li>${msgs[2] }</li>
		<li>${msgs[3] }</li>
		<li><%= msgs[0] %></li>
		<li><%= msgs[1] %></li>
		<li><%= msgs[2] %></li>
		<li><%= msgs[3] %></li>
	</ol>
	<h3>ArrayList(el) : ${list }</h3>
	<h3>ArrayList(java) : <%= list %></h3>
	<h3>HashMap(el) : ${map }</h3>
	<h3>HashMap(java) : <%= map %></h3>
	<p>bean : ${bean }</p>
	<dl>
		<dt>int num</dt>
		<dd>${bean.getNum() }</dd>
		<dt>int num</dt>
		<dd>${bean.num }</dd> <!-- Calls getter method automatically -->
		<dt>int name</dt>
		<dd>${bean.name }</dd>
	</dl>
	<p>bean : <%= request.getAttribute("bean") %></p>
	<p>${bean.tf ? "TRUE" : "FALSE" }</p>
</body>
</html>