package com.bit.dept.model;

import java.sql.SQLException;
import java.util.ArrayList;

public class Dept04Test {
	public static void main(String[] args) {
		try {
			Dept04DAO dao = new Dept04DAO();
			System.out.println("Connected : " + (dao.conn != null));
//			int result = dao.insertOne("����", "����");
//			System.out.println("Insert : " + (result > 0));
//			ArrayList<Dept04DTO> list = dao.selectAll();
//			for(Dept04DTO dto : list) {
//				System.out.println(dto);
//			}
//			int result = dao.deleteOne(5);
//			System.out.println("Delete : " + (result > 0));
//			int max = dao.maxDeptno();
//			System.out.println("Max number : " + (max > 0));
			int update = dao.updateOne(1, "���� ���̵� 1��", "����");
			System.out.println("Update : " + (update > 0));
			 dao = new Dept04DAO();
			update = dao.updateOne(2, "���� ���̵� 2��", "�۵�");
			System.out.println("Update : " + (update > 0));
			 dao = new Dept04DAO();
			update = dao.updateOne(3, "���� ���̵�", "�λ�");
			System.out.println("Update : " + (update > 0));
			 dao = new Dept04DAO();
			update = dao.updateOne(4, "����Ȱ��: ���̴� ����", "����");
			System.out.println("Update : " + (update > 0));
//			int count = dao.rowCount();
//			System.out.println("Row Count : " + count);
		} catch(SQLException e) {
			
		}
		
	}
}
