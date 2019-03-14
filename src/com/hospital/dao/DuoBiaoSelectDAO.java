package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.DoctorMapper;
import com.hospital.mapper.IMapper;
import com.hospital.vo.Doctor;

public class DuoBiaoSelectDAO {
	public List SelectOldOrder(int pagenow, int pagesize) {
			int start=(pagenow-1)*pagesize;
			String sql = " select *from (select rownum rn,d.* from Doctor d) where rn>? and rownum<=? ";
			Object []params = {
				start,
				pagesize
			};
			IMapper mapper = new DoctorMapper();
			DBManager db = new DBManager();
			List list = null;
			try {
				list = db.executeQueryObjectList(sql, params, mapper);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
	}
}
