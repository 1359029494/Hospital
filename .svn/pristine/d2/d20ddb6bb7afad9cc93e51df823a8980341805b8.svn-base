package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Patient;

public class PatientMapper implements IMapper {
	public List mapper(ResultSet rst) throws Exception {
		List<Patient> list = new ArrayList<Patient>();
		try {
			while(rst.next()) {
				int patid = rst.getInt("PATID");
				String patname = rst.getString("PATNAME");
				String patpass = rst.getString("PATPASS");
				String patphoto = rst.getString("PATPHOTO");
				int patsex = rst.getInt("PATSEX");
				String patidcard = rst.getString("PATIDCARD");
				Date patbirthday = rst.getDate("PATBIRTHDAY");
				String patphonenumber = rst.getString("PATPHONENUMBER");
				String patmail = rst.getString("PATMAIL");
				String pataddress = rst.getString("PATADDRESS");
				int patmi = rst.getInt("PATMI");
				
				Patient patient = new Patient(patid, patname, patpass,patphoto ,patsex, patidcard, patbirthday, patphonenumber, patmail, pataddress, patmi);
				list.add(patient);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
