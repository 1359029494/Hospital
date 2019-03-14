package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.MedicalRecord;

public class MedicalRecordMapper implements IMapper {
	public List mapper(ResultSet rst) throws Exception {
		List<MedicalRecord> list  = new ArrayList<MedicalRecord>();
		try {
			while(rst.next()) {
				int meid = rst.getInt("MEID");
				int patid = rst.getInt("PATID");
				int mepatage = rst.getInt("MEPATAGE");
				String patsymptom = rst.getString("PATSYMPTOM");
				String docdiagnosis = rst.getString("DOCDIAGNOSIS");
				String druglist = rst.getString("DRUGLIST");
				Date medate = rst.getDate("MEDATE");
				String medocname = rst.getString("MEDOCNAME");
				
				MedicalRecord mer = new MedicalRecord(meid, patid, mepatage, patsymptom, docdiagnosis, druglist, medate, medocname);
				list.add(mer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
