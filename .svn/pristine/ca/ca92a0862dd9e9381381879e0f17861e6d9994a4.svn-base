package com.hospital.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Orders;

public class OrdersMapper implements IMapper {
	public List mapper(ResultSet rst) throws Exception {
		List<Orders> list = new ArrayList<Orders>();
		try {
			while(rst.next()) {
				int orid = rst.getInt("ORID");
				String ornumber = rst.getString("ORNUMBER");
				double orprice = rst.getDouble("ORPRICE");
				int drnumber = rst.getInt("DRNUMBER");
				int drid = rst.getInt("DRID");
				int patid = rst.getInt("PATID");
				Date ordate = rst.getDate("ORDATE");
				int orstate = rst.getInt("ORSTATE");
				Orders orders = new Orders(orid, ornumber, orprice, drnumber,drid,patid,ordate,orstate);
				list.add(orders);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
