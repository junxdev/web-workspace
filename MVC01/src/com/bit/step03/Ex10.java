package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex10 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String x = this.getServletContext().getInitParameter("jun");
		
		Enumeration<String> enu = this.getInitParameterNames();
		String initParam = null;
		String initValue = null;
		PrintWriter out = resp.getWriter();
		while(enu.hasMoreElements()) {
			initParam = enu.nextElement();
			initValue = this.getInitParameter(initParam);
			out.println("<h1>PAGE 10 " + initParam + " : " + initValue + "</h1>");
		}
		out.println("<p>" + x + "</p>");
	}
}
