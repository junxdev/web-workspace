package model;

import java.sql.*;
import java.util.*;
import java.util.logging.Logger;

public class EmpDao {
	private static Logger log = Logger.getGlobal();

	public List<EmpDTO> getList() throws SQLException {
		List<EmpDTO> list = new ArrayList<EmpDTO>();
		String sql = "SELECT * FROM emp";
		try(
			Connection conn = MyOracle.getConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		) {
			while(rs.next()) {
				EmpDTO bean = new EmpDTO();
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setJob(rs.getString("job"));
				bean.setMgr(rs.getInt("mgr"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setSal(rs.getInt("sal"));
				bean.setComm(rs.getInt("comm"));
				bean.setDeptno(rs.getInt("deptno"));
				list.add(bean);
			}
		}
		return list;
	}
	
	public void add(int empno, String ename, String job, int deptno) throws SQLException {
		String sql = "INSERT INTO emp (empno, ename, job, deptno, hiredate) "
				+ "VALUES ("+ empno + ", '" + ename + "', '" + job + "', " +  deptno + ", sysdate)";
		try(
			Connection conn = MyOracle.getConn();
			Statement stmt = conn.createStatement();
		){
			log.info(sql);
			stmt.executeUpdate(sql);
		}
	}
	
	public EmpDTO getOne(int empno) throws SQLException {
		String sql = "SELECT * FROM emp WHERE empno = " + empno;
		EmpDTO bean = new EmpDTO();
		try(
			Connection conn = MyOracle.getConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		) {
			log.info(sql);
			if(rs.next()) {
				bean.setEmpno(rs.getInt("empno"));
				bean.setEname(rs.getString("ename"));
				bean.setJob(rs.getString("job"));
				bean.setMgr(rs.getInt("mgr"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setSal(rs.getInt("sal"));
				bean.setComm(rs.getInt("comm"));
				bean.setDeptno(rs.getInt("deptno"));
			}
		} catch(Exception e) {
			log.warning("!!!!! Oracle Database Error !!!!!");
		}
		return bean;
	}
}
