package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("ex11") 단일 매개변수일 경우 생략할 수 있다.
@WebServlet(value = "/ex11", initParams = {
		@WebInitParam(name = "msg1", value = "msg1 value"),
		@WebInitParam(name = "msg2", value = "msg2 value"),
		@WebInitParam(name = "msg3", value = "msg3 value")
})
public class Ex11 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String value = getInitParameter("msg");
		PrintWriter out = resp.getWriter();
		out.println("<h1>Annotation mapping " + value + "</h1>");
	}
}
