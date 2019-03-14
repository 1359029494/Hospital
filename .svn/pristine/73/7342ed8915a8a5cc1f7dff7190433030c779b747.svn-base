package com.hospital.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Doctor;

public class DoctorMapper implements IMapper {

	public List mapper(ResultSet rst) throws Exception {
		List<Doctor> list = new ArrayList<Doctor>();
		try {
			while(rst.next()) {
				int docid = rst.getInt("DOCID");
				String docname = rst.getString("DOCNAME");
				String docpass = rst.getString("DOCPASS");
				String docphoto = rst.getString("DOCPHOTO");
				int docsex = rst.getInt("DOCSEX");
				int docage = rst.getInt("DOCAGE");
				String docidcard = rst.getString("DOCIDCARD");
				String docphonenumber = rst.getString("DOCPHONENUMBER");
				String docmail = rst.getString("DOCMAIL");
				String docaddress = rst.getString("DOCADDRESS");
				String docdept = rst.getString("DOCDEPT");
				
				Doctor doc = new Doctor(docid, docname,docpass,docphoto, docsex, docage, docidcard, docphonenumber, docmail, docaddress, docdept);
				list.add(doc);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
