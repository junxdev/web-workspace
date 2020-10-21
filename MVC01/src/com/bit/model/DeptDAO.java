package com.bit.model;

import java.sql.*;
import java.util.*;

public class DeptDAO {
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdcb:oracl:thin:@192.168.0.148:1521:xe";
	String user = "scott";
	String password = "tiger";
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public List<DeptDTO> getList() {
		String sql = "SELECT * FROM dept";
		List<DeptDTO> list = new ArrayList<DeptDTO>();
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				DeptDTO dto = new DeptDTO();
				dto.setDeptno(rs.getInt("deptno"));
				dto.setDname(rs.getString("dname"));
				dto.setLoc(rs.getString("loc"));
				list.add(dto);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
}
