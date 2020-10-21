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
		
		if(title.isEmpty()) title = "제목없음"; // DB Default '제목없음' 데이터 무결성 2중
		title = title.replace("<", "&lt;"); // Script Attck 태그가 아닌 괄호로 출력
		title = title.replace(">", "&gt;");
		title = title.replace("--", "­­"); // Injection Attack 이후 문장을 주석처리
		title = title.replace("'", "＇");
		// title = title.replace(" ", "&nbsp;");
		
		String sql = "INSERT INTO bbs01 (num, title, id, write_date, content, ref, reply_num, reply_lv) VALUES ";
		sql += "(bbs01_seq.nextval, '" + title + "', '" + id + "', sysdate, '" + content + "', bbs01_seq.currval, 0, 0)";
		System.out.println(sql);
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		response.sendRedirect("/web04/bbs/list.jsp");
	%>
</body>
</html>