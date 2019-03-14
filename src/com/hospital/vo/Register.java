package com.hospital.vo;

//�Һű�
public class Register {
	private int regid;//�Һŵ����
	private int patid;//���߱��
	private int repatage;//��������
	private String redname;//�Һſ���
	private String redoc;//����ҽ��
	public int getRegid() {
		return regid;
	}
	public void setRegid(int regid) {
		this.regid = regid;
	}
	public int getPatid() {
		return patid;
	}
	public void setPatid(int patid) {
		this.patid = patid;
	}
	public int getRepatage() {
		return repatage;
	}
	public void setRepatage(int repatage) {
		this.repatage = repatage;
	}
	public String getRedname() {
		return redname;
	}
	public void setRedname(String redname) {
		this.redname = redname;
	}
	public String getRedoc() {
		return redoc;
	}
	public void setRedoc(String redoc) {
		this.redoc = redoc;
	}
	public Register(int regid, int patid, int repatage, String redname, String redoc) {
		super();
		this.regid = regid;
		this.patid = patid;
		this.repatage = repatage;
		this.redname = redname;
		this.redoc = redoc;
	}
	
	public Register(int patid, int repatage, String redname, String redoc) {
		super();
		this.patid = patid;
		this.repatage = repatage;
		this.redname = redname;
		this.redoc = redoc;
	}
	public Register() {
		super();
	}
	
}
