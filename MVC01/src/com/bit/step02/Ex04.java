package com.bit.step02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex04 extends GenericServlet {

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		arg0.setCharacterEncoding("utf-8");
		arg1.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = arg1.getWriter();
		out.println("<!DOCTYPE HTML>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>extends GenericServlet</h1>");
		out.println("<form action=\"ex06.bit\" method=\"post\">");
		out.println("<input type=\"text\" name=\"msg\">");
		out.println("<button>Àü¼Û</button>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}

}
