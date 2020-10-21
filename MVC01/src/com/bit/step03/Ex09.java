package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex09 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String initValue = getInitParameter("msg9");
		System.out.println("Servlet");
		PrintWriter out = resp.getWriter();
		out.println("<h1>HttpServlet init-Value : " + initValue + "</h1>");
	}
}
