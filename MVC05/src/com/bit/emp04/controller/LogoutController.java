package com.bit.emp04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04DTO;

@WebServlet("/logout.bit")
public class LogoutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Emp04DTO dto = (Emp04DTO) session.getAttribute("user");
		String name = dto.getName();
		session.invalidate();
		req.setAttribute("name", name);
		req.getRequestDispatcher("logout.jsp").forward(req, resp);
	}
}
