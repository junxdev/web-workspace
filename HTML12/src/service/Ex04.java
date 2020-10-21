package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex04 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/xml;charset=utf-8"); // servlet 주소로 직접 접속하는 경우 response header에 아무런 정보가 없기에 request에서 미리 설정
		PrintWriter out = resp.getWriter();
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.println("<students>");
		for(int i = 0; i < 5; i++) {
			out.println("<student>");
			out.println("<num>" + (i + 1) + "</num>");
			out.println("<name>user" + (i + 1) + "</name>");
			out.println("<kor>" + (i + 1) * 10 + "</kor>");
			out.println("<eng>" + (i + 1) * 10 + "</eng>");
			out.println("<math>" + (i + 1) * 10 + "</math>");
			out.println("</student>");
		}
		out.println("</students>");
		out.close();
	}
}
