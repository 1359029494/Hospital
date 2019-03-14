package com.hospital.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Register;

public class RegisterMapper implements IMapper {

	public List mapper(ResultSet rst) throws Exception {
		List<Register> list = new ArrayList<Register>();
		try {
			while(rst.next()) {
				int regid = rst.getInt("REGID");
				int patid = rst.getInt("PATID");
				int repatage = rst.getInt("REPATAGE");
				String redname = rst.getString("REDNAME");
				String redoc = rst.getString("REDOC");
				
				Register register = new Register(regid, patid, repatage, redname, redoc);
				list.add(register);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
