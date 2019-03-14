package com.hospital.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.DingDanHelp;
import com.hospital.vo.Drug;

public class DingDanHelpMapper implements IMapper{
	public List<DingDanHelp> mapper(ResultSet rs) throws Exception{
		List<DingDanHelp> list = new ArrayList<DingDanHelp>();
		try {
			while(rs.next()) {
				String ornumber = rs.getString("ORNUMBER");
				double orprice = rs.getDouble("SUM(ORPRICE)");
				DingDanHelp dh = new DingDanHelp(ornumber,orprice);
				list.add(dh);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(list.size());
		return list;
	}
}
