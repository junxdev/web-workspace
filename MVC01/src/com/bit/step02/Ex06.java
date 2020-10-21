package com.bit.step02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex06 extends MyServlet2 {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		req.setCharacterEncoding("utf-8");
		String msg = req.getParameter("msg");
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\"");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>msg : " + msg + "</h1>");
		out.println("</body>");
		out.println("</html>");
	}
}
