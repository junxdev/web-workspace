<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
java.sql.Connection conn = null;
java.sql.Statement stmt = null;
java.sql.ResultSet rs = null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
String user = "scott";
String password = "tiger";
%>
<table width="100%" align="center" bgcolor="white" border="0">
	<tr>
		<td>
			<a href="/web05"><img src="/web05/img/logo.png"></a>
		</td>
		<td>
			<p align="right"> 
			<%
			Object obj = session.getAttribute("name");
			if(obj != null) {
				String userName = (String)obj;
				out.print("¾È³çÇÏ¼¼¿ä! " + userName + "´Ô");
			}
			%> 
			</p>
		</td>
	</tr>