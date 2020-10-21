package com.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.EmpDAO;

@WebServlet("/delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int empno = Integer.parseInt(request.getParameter("idx"));
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\" src=\"js/jquery-1.12.4.js\"></script>");
		out.println("<script>");
		out.println("var result = window.confirm('Are you sure to delete?');");
		out.println("if(result) $.post('delete', 'empno=" + empno + "', function() {location.href='people'});");
		out.println("else history.back();");
		out.println("</script>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int empno = Integer.parseInt(request.getParameter("empno"));
		try {
			EmpDAO dao = new EmpDAO();
			dao.deleteOne(empno);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setStatus(200);
	}

}
