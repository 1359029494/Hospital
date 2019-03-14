package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Mail;

public class MailMapper implements IMapper {

	@Override
	public List mapper(ResultSet rst) throws Exception {
		List<Mail> list = new ArrayList<Mail>();
		try {
			while(rst.next()) {
				int mesid = rst.getInt("MESID");
				int author = rst.getInt("AUTHOR");
				int authorid = rst.getInt("AUTHORID");
				String title = rst.getString("TITLE");
				String message = rst.getString("MESSAGE");
				Date mesdate = rst.getDate("MESDATE");
				int messtade = rst.getInt("MESSTATE");
				Mail m = new Mail(mesid, author, authorid, title, message, mesdate, messtade);
				list.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
