package com.hospital.vo;

import java.sql.Date;

//������
/*
  �޶���
  �������У�patid:���߱�� 
        orstate������״̬
 */
public class Orders {
	private int orid;//����id
	private String ornumber;//�������
	private double orprice;//����ҩƷ�ܼ�
	private int drnumber; //��������
	private int drid; //ҩƷid
	private int patid; //����id
	private Date ordate;//��������
	private int orstate; //����״̬
	public int getOrid() {
		return orid;
	}
	public void setOrid(int orid) {
		this.orid = orid;
	}
	public String getOrnumber() {
		return ornumber;
	}
	public void setOrnumber(String ornumber) {
		this.ornumber = ornumber;
	}
	public double getOrprice() {
		return orprice;
	}
	public void setOrprice(double orprice) {
		this.orprice = orprice;
	}
	public int getDrnumber() {
		return drnumber;
	}
	public void setDrnumber(int drnumber) {
		this.drnumber = drnumber;
	}
	public int getDrid() {
		return drid;
	}
	public void setDrid(int drid) {
		this.drid = drid;
	}
	public int getPatid() {
		return patid;
	}
	public void setPatid(int patid) {
		this.patid = patid;
	}
	public Date getOrdate() {
		return ordate;
	}
	public void setOrdate(Date ordate) {
		this.ordate = ordate;
	}
	public int getOrstate() {
		return orstate;
	}
	public void setOrstate(int orstate) {
		this.orstate = orstate;
	}
	public Orders(int orid, String ornumber, double orprice, int drnumber, int drid, int patid, Date ordate,
			int orstate) {
		super();
		this.orid = orid;
		this.ornumber = ornumber;
		this.orprice = orprice;
		this.drnumber = drnumber;
		this.drid = drid;
		this.patid = patid;
		this.ordate = ordate;
		this.orstate = orstate;
	}
	public Orders() {
		super();
	}
	public Orders( String ornumber, double orprice, int drnumber, int drid, int patid, Date ordate,
			int orstate) {
		super();
		this.ornumber = ornumber;
		this.orprice = orprice;
		this.drnumber = drnumber;
		this.drid = drid;
		this.patid = patid;
		this.ordate = ordate;
		this.orstate = orstate;
	}
}