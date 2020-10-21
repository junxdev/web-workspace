package com.bit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.DeptDAO;
import com.bit.model.DeptDTO;

/**
 * Servlet implementation class DeptController
 */
@WebServlet(description = "This is contorller for dept data", urlPatterns = { "/index.bit" })
public class DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// MODEL
		DeptDAO dao = new DeptDAO();
		List<DeptDTO> list = dao.getList();
		request.setAttribute("alist", list);
		
		// VIEW
		RequestDispatcher rd = request.getRequestDispatcher("dept.jsp");
		rd.forward(request, response);
	}

}
