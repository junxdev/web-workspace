package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Logger;

public class EmpDAO {
	Logger log = Logger.getGlobal();
	Connection conn;
	
	public EmpDAO() throws SQLException {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<EmpDTO> selectAll() throws SQLException {
		String sql = "SELECT * FROM emp ORDER BY empno";
		ArrayList<EmpDTO> list = new ArrayList<EmpDTO>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				EmpDTO dto = new EmpDTO();
				dto.setEmpno(rs.getInt("empno"));
				dto.setEname(rs.getString("ename"));
				dto.setJob(rs.getString("job"));
				dto.setMgr(rs.getInt("mgr"));
				dto.setHiredate(rs.getDate("hiredate"));
				dto.setSal(rs.getInt("sal"));
				dto.setComm(rs.getInt("comm"));
				dto.setDeptno(rs.getInt("deptno"));
				list.add(dto);
				log.info(dto.toString());
			}
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		return list;
	}
	
	public void insertOne(int empno, String ename, String job, int mgr, int sal, int comm, int deptno) {
		String sql = "INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) "
				+ "VALUES (?, ?, ?, ?, sysdate, ?, ?, ?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, empno);
			ps.setString(2, ename); // protect from injection attack
			ps.setString(3, job);
			ps.setInt(4, mgr);
			ps.setInt(5, sal);
			ps.setInt(6, comm);
			ps.setInt(7, deptno);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public EmpDTO selectOne(int empno) throws SQLException {
		String sql = "SELECT * FROM emp WHERE empno = ?"; 
		EmpDTO dto = new EmpDTO();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, empno);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setEmpno(rs.getInt("empno"));
				dto.setEname(rs.getString("ename"));
				dto.setJob(rs.getString("job"));
				dto.setMgr(rs.getInt("mgr"));
				dto.setHiredate(rs.getDate("hiredate"));
				dto.setSal(rs.getInt("sal"));
				dto.setComm(rs.getInt("comm"));
				dto.setDeptno(rs.getInt("deptno"));
			}
		} finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		log.info(dto.toString());
		return dto;
	}
	
	public int updateOne(int empno, String job, int mgr, int sal, int comm) {
		int result = -1;
		String sql = "UPDATE emp SET job=?, mgr=?, sal=?, comm=? WHERE empno=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, job);
			ps.setInt(2, mgr);
			ps.setInt(3, sal);
			ps.setInt(4, comm);
			ps.setInt(5, empno);
			result = ps.executeUpdate();
			log.info("Update : " + (result > 0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int deleteOne(int empno) {
		int result = -1;
		String sql = "DELETE FROM emp WHERE empno = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, empno);
			result = ps.executeUpdate();
			log.info("Delete : " + (result > 0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
