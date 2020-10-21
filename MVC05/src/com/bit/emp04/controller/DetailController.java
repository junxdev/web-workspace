package com.bit.emp04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.emp04.model.Emp04DTO;

@WebServlet("/detail.bit")
public class DetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("user");
		if(obj != null) {
			Emp04DTO dto = (Emp04DTO) obj;
			if(dto.getLvl() > 1) {
				req.getRequestDispatcher("detail.jsp").forward(req, resp);
			} else {
				resp.sendRedirect("lowlevel.jsp");
			}
		} else {
			resp.sendRedirect("login.bit");
		}
	}
}
