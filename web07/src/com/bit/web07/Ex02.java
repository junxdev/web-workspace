package com.bit.web07;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("Ex02 is running");
		String msg = req.getParameter("msg");
		PrintWriter out = resp.getWriter();
//		String msg = "<html><head><meta charset=\"EUC-KR\"></head><body><h1>ex02 page has opened.</h1></body></html>";
//		out.println(msg);
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"EUC-KR\"");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>ex02 page has opened!</h1>");
		for(int i = 0; i < 5; i++) {
			out.println("<p>" + i + " line</p>");
		}
		out.println("<h2>msg : " + msg + "</h2>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
		out.close();
	}
}
