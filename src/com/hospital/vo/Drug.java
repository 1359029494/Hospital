package com.hospital.vo;

//ҩƷ��
public class Drug  {
	private int drid;//ҩƷ���
	private String drphoto;//ҩƷͼƬ
	private String drname;//ҩƷ����
	private double drprice;//ҩƷ����
	private int drnumber;//�������
	private String dreffect;//ҩƷ��������
	private int prescription;//�Ƿ񴦷�ҩ
	public int getDrid() {
		return drid;
	}
	public void setDrid(int drid) {
		this.drid = drid;
	}
	public String getDrphoto() {
		return drphoto;
	}
	public void setDrphoto(String drphoto) {
		this.drphoto = drphoto;
	}
	public String getDrname() {
		return drname;
	}
	public void setDrname(String drname) {
		this.drname = drname;
	}
	public double getDrprice() {
		return drprice;
	}
	public void setDrprice(double drprice) {
		this.drprice = drprice;
	}
	public int getDrnumber() {
		return drnumber;
	}
	public void setDrnumber(int drnumber) {
		this.drnumber = drnumber;
	}
	public String getDreffect() {
		return dreffect;
	}
	public void setDreffect(String dreffect) {
		this.dreffect = dreffect;
	}
	public int getPrescription() {
		return prescription;
	}
	public void setPrescription(int prescription) {
		this.prescription = prescription;
	}
	public Drug(int drid, String drphoto, String drname, double drprice, int drnumber, String dreffect,
			int prescription) {
		super();
		this.drid = drid;
		this.drphoto = drphoto;
		this.drname = drname;
		this.drprice = drprice;
		this.drnumber = drnumber;
		this.dreffect = dreffect;
		this.prescription = prescription;
	}
	public Drug(String drphoto, String drname, double drprice, int drnumber, String dreffect,
			int prescription) {
		super();
		this.drphoto = drphoto;
		this.drname = drname;
		this.drprice = drprice;
		this.drnumber = drnumber;
		this.dreffect = dreffect;
		this.prescription = prescription;
	}
	public Drug() {
		super();
	}
	
}
