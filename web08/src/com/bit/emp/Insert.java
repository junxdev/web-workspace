package com.bit.emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Insert extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");
		
		String param1 = req.getParameter("empno");
		String param2 = req.getParameter("ename");
		String param3 = req.getParameter("pay");
		
		int empno = Integer.parseInt(param1.trim());
		String ename = param2.trim();
		int pay = Integer.parseInt(param3.trim());
		
		EmpCRUD.insert(empno, ename, pay);
		
		resp.sendRedirect("list.jsp");
	}
}
