package com.bit.step02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet2 extends GenericServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendError(res.SC_METHOD_NOT_ALLOWED, "비켜라!");
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendError(res.SC_METHOD_NOT_ALLOWED, "비켜라!");
	}
	
	protected void doHead(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendError(res.SC_METHOD_NOT_ALLOWED, "비켜라!");
	}
	
	protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendError(res.SC_METHOD_NOT_ALLOWED, "비켜라!");
	}
	
	protected void doPut(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.sendError(res.SC_METHOD_NOT_ALLOWED, "비켜라!");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		javax.servlet.http.HttpServletRequest request = (HttpServletRequest) req;
		javax.servlet.http.HttpServletResponse response = (HttpServletResponse) res;
		String method = request.getMethod();
		System.out.println(method);
		if("POST".equals(method)) doPost(request, response);
		else if("GET".equals(method)) doGet(request, response);
		else if("HEAD".equals(method)) doHead(request, response);
		else if("DELETE".equals(method)) doDelete(request, response);
		else if("PUT".equals(method)) doPut(request, response);
	}

}
