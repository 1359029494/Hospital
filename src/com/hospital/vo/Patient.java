package com.hospital.vo;
//���߱�� vo 

import java.sql.Date;

public class Patient {
	private int patid;//���߱��
	private String patname;//��������
	private String patpass;//��������
	private String patphoto;//����ͷ��
	private int patsex;//�����Ա�
	private String patidcard;//�������֤�� 
	private Date patbirthday;//���߳�������
	private String patphonenumber;//�����ֻ���
	private String patmail;//��������
	private String pataddress;//����סַ
	private int patmi;//�����Ƿ�ҽ��
	public int getPatid() {
		return patid;
	}
	public void setPatid(int patid) {
		this.patid = patid;
	}
	public String getPatname() {
		return patname;
	}
	public void setPatname(String patname) {
		this.patname = patname;
	}
	public String getPatpass() {
		return patpass;
	}
	public void setPatpass(String patpass) {
		this.patpass = patpass;
	}
	public String getPatphoto() {
		return patphoto;
	}
	public void setPatphoto(String patphoto) {
		this.patphoto = patphoto;
	}
	public int getPatsex() {
		return patsex;
	}
	public void setPatsex(int patsex) {
		this.patsex = patsex;
	}
	public String getPatidcard() {
		return patidcard;
	}
	public void setPatidcard(String patidcard) {
		this.patidcard = patidcard;
	}
	public Date getPatbirthday() {
		return patbirthday;
	}
	public void setPatbirthday(Date patbirthday) {
		this.patbirthday = patbirthday;
	}
	public String getPatphonenumber() {
		return patphonenumber;
	}
	public void setPatphonenumber(String patphonenumber) {
		this.patphonenumber = patphonenumber;
	}
	public String getPatmail() {
		return patmail;
	}
	public void setPatmail(String patmail) {
		this.patmail = patmail;
	}
	public String getPataddress() {
		return pataddress;
	}
	public void setPataddress(String pataddress) {
		this.pataddress = pataddress;
	}
	public int getPatmi() {
		return patmi;
	}
	public void setPatmi(int patmi) {
		this.patmi = patmi;
	}
	public Patient(int patid, String patname, String patpass, String patphoto , int patsex, String patidcard, Date patbirthday,
			String patphonenumber, String patmail, String pataddress, int patmi) {
		super();
		this.patid = patid;
		this.patname = patname;
		this.patpass = patpass;
		this.patphoto = patphoto;
		this.patsex = patsex;
		this.patidcard = patidcard;
		this.patbirthday = patbirthday;
		this.patphonenumber = patphonenumber;
		this.patmail = patmail;
		this.pataddress = pataddress;
		this.patmi = patmi;
	}
	public Patient() {
		super();
	}
}
