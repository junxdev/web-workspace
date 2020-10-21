package com.bit.web06_emp02;

import java.sql.*;

import com.bit.web06_emp02.dto.Emp02Bean;

public class Emp02Detail {

	public Emp02Bean detail(int empno) {
		Emp02Bean bean = new Emp02Bean();
		String sql = "{CALL emp02_detail(" + empno + ", ?)}";
		
		Connection conn = null;
		CallableStatement callstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Oracle.getConnection();
			callstmt = conn.prepareCall(sql);
			callstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			callstmt.execute();
			rs = (ResultSet) callstmt.getObject(1);
			if(rs.next()) {
//				System.out.println(rs.getInt(1));
//				System.out.println(rs.getString(2));
//				System.out.println(rs.getDate(3));
//				System.out.println(rs.getInt(4));
				bean.setEmpno(rs.getInt(1));
				bean.setEname(rs.getString(2));
				bean.setHiredate(rs.getDate(3));
				bean.setPay(rs.getInt(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(callstmt != null) callstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bean;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Emp02Detail emp = new Emp02Detail();
		Emp02Bean bean = emp.detail(10);
		System.out.println(bean.getEmpno());
		System.out.println(bean.getEname());
		System.out.println(bean.getHiredate());
		System.out.println(bean.getPay());
	}

}
