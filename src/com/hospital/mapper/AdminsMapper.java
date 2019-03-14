package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Admins;

public class AdminsMapper implements IMapper{
	public List mapper(ResultSet rst) throws Exception{
		List<Admins> list = new ArrayList<Admins>();
		try {
			while(rst.next()) {
				int admid = rst.getInt("ADMID");
				String admname = rst.getString("ADMNAME");
				String admpass = rst.getString("ADMPASS");
				String admphoto = rst.getString("ADMPHOTO");
				Date admdate = rst.getDate("ADMDATE");
				String admidcard = rst.getString("ADMIDCARD");
				String admphonenumber = rst.getString("ADMPHONENUMBER");
				String admaddress = rst.getString("ADMADDRESS");
				int superadmin = rst.getInt("SUPERADMIN");
				
				Admins adm = new Admins(admid, admname,admpass,admphoto, admdate, admidcard, admphonenumber, admaddress, superadmin);
				list.add(adm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
