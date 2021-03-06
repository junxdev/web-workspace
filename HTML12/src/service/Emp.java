package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmpDTO;
import model.EmpDao;

public class Emp extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		EmpDao dao = new EmpDao();
		List<EmpDTO> list = new ArrayList<EmpDTO>();
		try {
			list = dao.getList();
			resp.setContentType("application/xml; charset=utf-8");
			PrintWriter out = resp.getWriter();
			out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
			out.println("<emps>");
			for(int i = 0; i < list.size(); i++) {
				EmpDTO bean = list.get(i);
				out.println("	<emp>");
				out.println("		<empno>" + bean.getEmpno() + "</empno>");
				out.println("		<ename>" + bean.getEname() + "</ename>");
				out.println("		<job>" + bean.getJob() + "</job>");
				if(bean.getMgr() == 0) out.println("		<mgr>" + "CONFIDENTIAL" + "</mgr>");
					else out.println("		<mgr>" + bean.getMgr() + "</mgr>");
				if(bean.getHiredate() == null) out.println("		<hiredate>" + "CONFIDENTIAL" + "</hiredate>");
					else out.println("		<hiredate>" + bean.getHiredate() + "</hiredate>");
				if(bean.getSal() == 0) out.println("		<sal>" + "CONFIDENTIAL" + "</sal>");
					else out.println("		<sal>" + bean.getSal() + "</sal>");
				if(bean.getComm() == 0) out.println("		<comm>" + "CONFIDENTIAL" + "</comm>");
					else out.println("		<comm>" + bean.getComm() + "</comm>");
				out.println("		<deptno>" + bean.getDeptno() + "</deptno>");
				out.println("	</emp>");
			}
			out.println("</emps>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
