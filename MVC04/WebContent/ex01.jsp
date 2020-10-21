<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
	table {
		border-collapse: collapse;
	}
	tr > th {
		border: 1px solid black;
		width: 300px;
	}
	tr > td {
		border: 1px solid black;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>EL(Expression Language) Grammar</h1>
	<table>
		<tr>
			<th>Type</th>
			<th>Java</th>
			<th>EL</th>
			<th>EL Expression</th>
		</tr>
		<tr>
			<td>String</td>
			<td><%= "Hello!" %></td>
			<td>${"Hello! Again"}</td>
			<td>＄{"Hello!"}</td>
		</tr>
		<tr>
			<td>Digitus</td>
			<td><%= 123.4 %></td>
			<td>${123.4}</td>
			<td>＄{123.4}</td>
		</tr>
		<tr>
			<td>Addition</td>
			<td><%= 3 + 3.0 %></td>
			<td>${3 + 3.0}</td>
			<td>＄{3 + 3.0}</td>
		</tr>
		<tr>
			<td>Division: quotient</td>
			<td><%= 51 / 3 %></td>
			<td>${51 / 3}</td>
			<td>＄{51 / 3}</td>
		</tr>
		<tr>
			<td>Division: quotient</td>
			<td><%= 51 / 4 %></td>
			<td>${51 / 4}</td>
			<td>＄{51 / 4}</td>
		</tr>
		<tr>
			<td>Division: quotient</td>
			<td><%= 51 / 4 %></td>
			<td>${51 div 4}</td>
			<td>＄{51 div 4}</td>
		</tr>
		<tr>
			<td>Division: remainder</td>
			<td><%= 5 % 2 %></td>
			<td>${5 % 2}</td>
			<td>＄{5 % 2}</td>
		</tr>
		<tr>
			<td>Division: remainder</td>
			<td><%= 5 % 2 %></td>
			<td>${5 mod 2}</td>
			<td>＄{5 mod 2}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 == 5 %></td>
			<td>${5 == 5}</td>
			<td>＄{5 == 5}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 == 4 %></td>
			<td>${5 == 4}</td>
			<td>＄{5 == 4}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 > 4 %></td>
			<td>${5 gt 4}</td>
			<td>＄{5 gt 4}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 < 4 %></td>
			<td>${5 lt 4}</td>
			<td>＄{5 lt 4}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 >= 4 %></td>
			<td>${5 ge 4}</td>
			<td>＄{5 ge(gt eq) 4}</td>
		</tr>
		<tr>
			<td>Comparison</td>
			<td><%= 5 >= 4 %></td>
			<td>${5 le 4}</td>
			<td>＄{5 le(lt eq) 4}</td>
		</tr>
		<tr>
			<td>Data Type</td>
			<td><%= 'a' %></td>
			<td>${'a'}</td>
			<td>＄{'a'}</td>
		</tr>
		<tr>
			<td>Data Type</td>
			<td><%= true %></td>
			<td>${true}</td>
			<td>＄{true}</td>
		</tr>
		<tr>
		<% String msg = null; %>
			<td>Data Type</td>
			<td><%= msg %></td>
			<td>${null}</td>
			<td>＄{null}</td>
		</tr>
	</table>
</body>
</html>