package com.hospital.test_medicalrecord;

import java.util.List;

import org.junit.Test;

import com.hospital.dao.MedicalRecordDAO;
import com.hospital.vo.MedicalRecord;

public class TestMedicalRecord {
	/*
	@Test
	public void testfindRecordByPatId() {
		MedicalRecordDAO dao = new MedicalRecordDAO();
		List<MedicalRecord> list=null;
		try {
			list=dao.findRecordByPatId(8);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(list.size());
		
	}
	*/
	@Test
	public void testfindRecordById() {
		MedicalRecordDAO dao = new MedicalRecordDAO();
	MedicalRecord me= new MedicalRecord();
		try {
			me=dao.findById(1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(me.getMedocname());
		
	}
	

}
