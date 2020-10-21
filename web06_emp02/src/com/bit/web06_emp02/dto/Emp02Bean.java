package com.bit.web06_emp02.dto;

import java.sql.Date;

// javaBean
// getter & setter
// Encapsulation: 정보를 은닉하고 필요한 제어 기능만 제공

public class Emp02Bean {
	private int empno;
	private String ename;
	private Date hiredate;
	private int pay;
	
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	public int getEmpno() {
		return empno;
	}
	
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public String getEname() {
		return ename;
	}
	
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
	public Date getHiredate() {
		return hiredate;
	}
	
	public void setPay(int pay) {
		this.pay = pay;
	}
	
	public int getPay() {
		return pay;
	}
	
}
