package com.bit.xml;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.util.MyOracle;

public class StudentJSON extends HttpServlet{
	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("{\"students\" : [");
		String sql = "SELECT * FROM student ORDER BY num desc";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			boolean firstRow = true;
			while(rs.next()) {
				if(firstRow) {
					out.print("{");
					firstRow = false;
				} else {
					out.print(",{");
				}
				out.print("\"num\" : " + rs.getInt("num") + ", ");
				out.print("\"name\" : \"" + rs.getString("name") + "\", ");
				out.print("\"kor\" : " + rs.getInt("kor") + ", ");
				out.print("\"eng\" : " + rs.getInt("eng") +  ", ");
				out.print("\"math\" : " + rs.getInt("math"));
				out.println("}");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		out.println("]}");
	}
}
