package com.bit.step01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements Servlet{
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy()" + this.hashCode());
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		System.out.println("getServletConfig()" + this.hashCode());
		return this.config;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		System.out.println("getServletInfo()" + this.hashCode());
		return "This servlet is made by Jun at Jul 27 2020";
	}
	ServletConfig config;
	
	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		config = arg0;
		System.out.println("init(ServletConfig arg0)" + this.hashCode());
	}

	@Override
	public void service(ServletRequest req, ServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service(ServletRequest arg0, ServletResponse arg1)" + this.hashCode());
		System.out.println(getServletInfo());
		System.out.println(getServletConfig());
		PrintWriter out = resp.getWriter();
		out.println("<h1>Hello, World!</h1>");
		out.println("<p>This is how Servlet works!</p>");
	}
	
}
