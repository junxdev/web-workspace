package com.bit.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.EmpDAO;
import com.bit.model.EmpDTO;

/**
 * Servlet implementation class EditController
 */
@WebServlet("/edit")
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int empno = Integer.parseInt(request.getParameter("idx"));
		EmpDAO dao;
		try {
			dao = new EmpDAO();
			EmpDTO dto = dao.selectOne(empno);
			request.setAttribute("dto", dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int empno = Integer.parseInt(request.getParameter("empno").trim());
		String job = request.getParameter("job").trim();
		int sal = Integer.parseInt(request.getParameter("sal").trim());
		int comm = Integer.parseInt(request.getParameter("comm").trim());
		int mgr = Integer.parseInt(request.getParameter("mgr").trim());
		EmpDAO dao;
		try {
			dao = new EmpDAO();
			dao.updateOne(empno, job, mgr, sal, comm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("detail?idx=" + empno);
	}

}
