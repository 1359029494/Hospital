package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Admmail;
import com.hospital.vo.Orders;

public class AdmmailMapper implements IMapper {

	@Override
	public List mapper(ResultSet rst) throws Exception {
		List<Admmail> list = new ArrayList<Admmail>();
		try {
			while(rst.next()) {
				int mailid = rst.getInt("MAILID");
				int docid = rst.getInt("DOCID");
				String mailmessages = rst.getString("MAILMESSAGES");
				int mailstate = rst.getInt("MAILSTATE");
				Date maildate = rst.getDate("MAILDATE");
				Admmail ad = new Admmail(mailid, docid, mailmessages, mailstate, maildate) ;
				list.add(ad);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
