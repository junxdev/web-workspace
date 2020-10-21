package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DeptDTO;
import model.DeptDao;

@WebServlet("/deptdetail.bit")
public class DeptOne extends HttpServlet {
	Logger log = Logger.getGlobal();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int deptno = Integer.parseInt(req.getParameter("idx"));
		log.info("param : " + deptno);
		DeptDao dao = new DeptDao();
		try {
			DeptDTO bean = dao.getOne(deptno);
			PrintWriter out = resp.getWriter();
			out.println("{\"dept\" : [");
			out.println("{\"deptno\" : " + bean.getDeptno() + ", ");
			out.println("\"dname\" : \"" + bean.getDname() + "\", ");
			out.println("\"loc\" : \"" + bean.getLoc() + "\"}");
			out.println("]}");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
