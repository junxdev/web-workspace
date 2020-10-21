package com.bit.model;

public class DeptDTO {
	private int deptno;
	private String dname, loc;
	
	public DeptDTO() {
		// TODO Auto-generated constructor stub
		// Must have the default constructor explicitly
	}
	
	public int getDeptno() {
		return deptno;
	}
	public String getDname() {
		return dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
}
