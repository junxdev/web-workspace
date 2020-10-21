<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// get Method
	// server.xml 설정
	// <Connector URIEncoding="EUC-KR" connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443"/>
	// post Method
	// set encoding type(same one as page encoding type) before parsing parameters
		request.setCharacterEncoding("EUC-KR");
		String title = request.getParameter("title");
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		
		int ref = Integer.parseInt(request.getParameter("ref"));
		int reply_num = Integer.parseInt(request.getParameter("reply_num"));
		int reply_lv = Integer.parseInt(request.getParameter("reply_lv"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		Connection conn = null;
		Statement stmt = null;

		java.lang.Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			if(reply_lv == 0) {
				String sql = "INSERT INTO bbs01 (num, title, id, write_date,content, ref, reply_num, reply_lv) VALUES (";
				sql += "bbs01_seq.nextval, '" + title + "', '" + id + "', sysdate, '" + content + "', " + ref + ", ";
				sql += "(SELECT MAX(reply_num)+1 FROM bbs01 WHERE ref = " + ref + "), " + reply_lv + "+1)";
				stmt.executeUpdate(sql);
			} else {
				String sql = "UPDATE bbs01 SET reply_num = reply_num+1 WHERE ref = " + ref + " AND reply_num > " + reply_num;
				stmt.executeUpdate(sql);
				stmt.close();
				stmt = conn.createStatement();
				sql = "INSERT INTO bbs01 (num, title, id, write_date,content, ref, reply_num, reply_lv) VALUES (";
				sql += "bbs01_seq.nextval, '" + title + "', '" + id + "', sysdate, '" + content + "', " + ref + ", ";
				sql += reply_num + "+1, " + reply_lv + "+1)";
				stmt.executeUpdate(sql);
			} 
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		response.sendRedirect("/web04/bbs/list.jsp");
	%>
</body>
</html>