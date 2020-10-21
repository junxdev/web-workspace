package com.bit.dept.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept.model.Dept04DAO;
import com.bit.dept.model.Dept04DTO;

@WebServlet("/location/detail")
public class DetailLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		try {
			Dept04DAO dao = new Dept04DAO();
			request.setAttribute("dto", dao.seleteOne(num));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("/detailloc.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int deptno = Integer.parseInt(req.getParameter("deptno"));
		String dname = req.getParameter("dname").trim();
		String loc = req.getParameter("loc").trim();
		try {
			Dept04DAO dao = new Dept04DAO();
			dao.updateOne(deptno, dname, loc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("list");
	}
}
