package com.hospital.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Drug;

public class DrugMapper implements IMapper {

	public List mapper(ResultSet rst) throws Exception {
		List<Drug> list = new ArrayList<Drug>();
		try {
			while(rst.next()) {
				int drid = rst.getInt("DRID");
				String drphoto = rst.getString("DRPHOTO");
				String drname = rst.getString("DRNAME");
				double drprice = rst.getDouble("DRPRICE");
				int drnumber = rst.getInt("DRNUMBER");
				String dreffect = rst.getString("DREFFECT");
				int prescription = rst.getInt("PRESCRIPTION");
				
				Drug drug = new Drug(drid, drphoto, drname, drprice, drnumber, dreffect, prescription);
				list.add(drug);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
