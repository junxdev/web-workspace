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

@WebServlet("/people/add")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력 폼 페이지 출력
		RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력 기능 작동
		request.setCharacterEncoding("UTF-8");
		int empno = -1;
		try {
			empno = Integer.parseInt(request.getParameter("empno").trim());
		} catch(NumberFormatException e) {
			request.setAttribute("err", "You must fill in number");
			doGet(request, response);
			return;
		}
		String ename = request.getParameter("ename").trim();
		String job = request.getParameter("job").trim();
		int sal = new Random().nextInt(4000);
		int comm = new Random().nextInt(1500);
		int mgr = new int[]{7369, 7499, 7521, 7566, 7654, 7698, 7782, 7788, 7839, 7844, 7876, 7900}[new Random().nextInt(12)];
		int deptno = (new Random().nextInt(6) + 1) * 10;
		EmpDAO dao;
		try {
			dao = new EmpDAO();
			dao.insertOne(empno, ename, job, mgr, sal, comm, deptno);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("../people");
	}

}
