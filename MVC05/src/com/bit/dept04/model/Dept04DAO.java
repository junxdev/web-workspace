package com.bit.dept04.model;

import java.sql.*;

import com.bit.dept04.model.*;

import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Dept04DAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Dept04DAO(){
		try {
			InitialContext ic = new InitialContext();
			Context ct = null;
			DataSource ds = null;
			ct = (Context) ic.lookup("java:/comp/env");
			ds = (DataSource) ct.lookup("jdbc/oracle");
//			also available by ds = ic.lookup("java:/comp/env/jdbc/oracle");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		String driver = "oracle.jdbc.OracleDriver";
//		String url = "jdbc:oracle:thin:@192.168.0.148:1521:xe";
//		String user = "scott";
//		String password = "tiger";
//		try {
//			Class.forName(driver);
//			this.conn = DriverManager.getConnection(url, user, password);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	
	public List<Dept04DTO> selectAll() {
		List<Dept04DTO> list = new ArrayList<Dept04DTO>();
		String sql = "SELECT * FROM dept04";
		try {
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			conn.commit();
			while(rs.next()) {
				list.add(new Dept04DTO(
						rs.getInt("deptno"), 
						rs.getString("dname"), 
						rs.getString("loc")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			try {
				conn.setAutoCommit(true);
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
}
