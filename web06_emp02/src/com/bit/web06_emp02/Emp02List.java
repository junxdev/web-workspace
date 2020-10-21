package com.bit.web06_emp02;

import java.sql.*;

import com.bit.web06_emp02.dto.Emp02Bean;

public class Emp02List {
	
	public java.util.List<Emp02Bean> list() {
		String sql = "{call emp02_list(?)}";
		Connection conn = null;
		CallableStatement callstmt = null;
		ResultSet rs = null;
//		ResultSet rs2 = null;
		
		java.util.List<Emp02Bean> list = new java.util.ArrayList<Emp02Bean>();
		
		try {
			conn = Oracle.getConnection();
			callstmt = conn.prepareCall(sql);
			callstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
//			callstmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			callstmt.execute();
			rs = (ResultSet) callstmt.getObject(1);
//			rs2 = (ResultSet) callstmt.getObject(2);
			while(rs.next()) {
//				System.out.print(rs.getInt(1) + "\t");
//				System.out.print(rs.getString(2) + "\t");
//				System.out.print(rs.getDate(3) + "\t");
//				System.out.print(rs.getInt(4) + "\n");
//				if(rs2.next()) {
//					System.out.print(rs2.getInt(1) + "\t");
//					System.out.print(rs2.getString(2) + "\t");
//					System.out.print(rs2.getString(3) + "\n");
//				}
				Emp02Bean bean = new Emp02Bean();
				bean.setEmpno(rs.getInt(1));
				bean.setEname(rs.getString(2));
				bean.setHiredate(rs.getDate(3));
				bean.setPay(rs.getInt(4));
				list.add(bean);
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
		return list;
	}

	public static void main(String[] args) {
		Emp02List empList = new Emp02List();
		java.util.List<Emp02Bean> list = empList.list();
		for(int i = 0; i < list.size(); i++) {
			Emp02Bean bean = list.get(i);
			System.out.println(bean.getEname());
		}
	}

}
