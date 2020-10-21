package com.bit.emp04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04DAO;
import com.bit.emp04.model.Emp04DTO;

@WebServlet("/login.bit")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
//		String result = null;
//		try {
//			result = req.getParameter("result").trim();
//			System.out.println(result);
//			if(result.equals("x")) {
//				req.getRequestDispatcher("index.jsp").forward(req, resp);
//			}
//		} catch(NullPointerException e) {
//			
//		}
		req.getRequestDispatcher("login.jsp").forward(req, resp);
//		HttpSession session = req.getSession();
//		Object obj = session.getAttribute("user");
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int sabun = Integer.parseInt(req.getParameter("sabun"));
		String name = req.getParameter("name");
		Emp04DTO dto = new Emp04DAO().login(sabun, name);
		HttpSession session = req.getSession();
		session.setAttribute("user", dto);
		req.setAttribute("result", "x");
//		req.getRequestDispatcher("welcome.jsp").forward(req, resp);
		System.out.println("here1");
		resp.sendRedirect("add.bit");
//		req.getRequestDispatcher("add.bit").forward(req, resp);
	}
}
