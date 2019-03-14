package com.hospital.mapper;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.vo.Mdept;

public class MdeptMapper implements IMapper {

	public List mapper(ResultSet rst) throws Exception {
		List<Mdept> list = new ArrayList<Mdept>();
		try {
			while(rst.next()) {
				int deptid = rst.getInt("DEPTID");
				String dname = rst.getString("DNAME");
				
				Mdept mdept = new Mdept(deptid, dname);
				list.add(mdept);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
