package model;

import java.util.*;
import java.sql.*;

public class DeptDao {
	
	public List<DeptDTO> getList() throws SQLException {
		List<DeptDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM dept";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = MyOracle.getConn();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				DeptDTO bean = new DeptDTO();
				bean.setDeptno(rs.getInt("deptno"));
				bean.setDname(rs.getString("dname"));
				bean.setLoc(rs.getString("loc"));
				list.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public DeptDTO getOne(int deptno) throws SQLException {
			String sql = "SELECT * FROM dept WHERE deptno = " + deptno;
			DeptDTO bean = new DeptDTO();
			try(
				Connection conn = MyOracle.getConn();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			) {
				if(rs.next()) {
					bean.setDeptno(rs.getInt("deptno"));
					bean.setDname(rs.getString("dname"));
					bean.setLoc(rs.getString("loc"));
				}
			}
			
			return bean;
	}
}
