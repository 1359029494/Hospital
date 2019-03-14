package com.hospital.vo;


//科室表
public class Mdept {
	private int deptid;//科室编号
	private String dname;//科室名称
	public int getDeptid() {
		return deptid;
	}
	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Mdept(int deptid, String dname) {
		super();
		this.deptid = deptid;
		this.dname = dname;
	}
	
	public Mdept(String dname) {
		super();
		this.dname = dname;
	}
	public Mdept() {
		super();
	}
	
}
