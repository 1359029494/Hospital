package com.hospital.vo;

import java.sql.Date;

//����Ա��
public class Admins {
	private int admid;//����Ա���
	private String admname;//����Ա����
	private String admpass;//����Ա����
	private String admphoto;//����Աͷ��
	private Date admdate;//����Աע��ʱ��
	private String admidcard;//����Ա���֤��
	private String admphonenumber;//����Ա�ֻ���
	private String admaddress;//����Աסַ
	private int superadmin;//�Ƿ�Ϊ����
	public int getAdmid() {
		return admid;
	}
	public void setAdmid(int admid) {
		this.admid = admid;
	}
	public String getAdmname() {
		return admname;
	}
	public void setAdmname(String admname) {
		this.admname = admname;
	}
	public String getAdmpass() {
		return admpass;
	}
	public void setAdmpass(String admpass) {
		this.admpass = admpass;
	}
	public String getAdmphoto() {
		return admphoto;
	}
	public void setAdmphoto(String admphoto) {
		this.admphoto = admphoto;
	}
	public Date getAdmdate() {
		return admdate;
	}
	public void setAdmdate(Date admdate) {
		this.admdate = admdate;
	}
	public String getAdmidcard() {
		return admidcard;
	}
	public void setAdmidcard(String admidcard) {
		this.admidcard = admidcard;
	}
	public String getAdmphonenumber() {
		return admphonenumber;
	}
	public void setAdmphonenumber(String admphonenumber) {
		this.admphonenumber = admphonenumber;
	}
	public String getAdmaddress() {
		return admaddress;
	}
	public void setAdmaddress(String admaddress) {
		this.admaddress = admaddress;
	}
	public int getSuperadmin() {
		return superadmin;
	}
	public void setSuperadmin(int superadmin) {
		this.superadmin = superadmin;
	}
	public Admins(int admid, String admname,String admpass,String admphoto,Date admdate, String admidcard, String admphonenumber, String admaddress,
			int superadmin) {
		super();
		this.admid = admid;
		this.admname = admname;
		this.admpass = admpass;
		this.admdate = admdate;
		this.admidcard = admidcard;
		this.admphonenumber = admphonenumber;
		this.admaddress = admaddress;
		this.superadmin = superadmin;
		this.admphoto = admphoto;
	}
	public Admins(String admname,String admpass,String admphoto,Date admdate, String admidcard, String admphonenumber, String admaddress,
			int superadmin) {
		super();
		this.admname = admname;
		this.admpass = admpass;
		this.admdate = admdate;
		this.admidcard = admidcard;
		this.admphonenumber = admphonenumber;
		this.admaddress = admaddress;
		this.superadmin = superadmin;
		this.admphoto = admphoto;
	}
	public Admins() {
		super();
	}
	
}
