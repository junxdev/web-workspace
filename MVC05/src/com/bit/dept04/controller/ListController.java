package com.bit.dept04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dept04.model.Dept04DAO;

@WebServlet("/index.bit")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//this.getServletContext();
		Dept04DAO dao = null;
		dao = new Dept04DAO();
		request.setAttribute("list", dao.selectAll());
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
