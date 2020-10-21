package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DeptDTO;
import model.DeptDao;

public class Dept extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/* JSON
		 * {"key" : [{{},{}}]}
		*/		
		DeptDao dao = new DeptDao();
		try {
			List<DeptDTO> list = dao.getList();
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("application/json");
			PrintWriter out = resp.getWriter();
			out.println("{\"dept\" : [");
			for(int i = 0; i < list.size(); i++) {
				DeptDTO bean = list.get(i);
				if(i != 0) out.println(",");
				out.println("{");
				out.println("\"deptno\" : " + bean.getDeptno());
				out.println(", \"dname\" : \"" + bean.getDname() + "\"");
				out.println(", \"loc\" : \"" + bean.getLoc() + "\"");
				out.println("}");
			}
			out.println("]}");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
