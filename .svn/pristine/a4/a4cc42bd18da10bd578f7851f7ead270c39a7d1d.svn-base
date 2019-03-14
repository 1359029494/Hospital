package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.MdeptMapper;
import com.hospital.vo.Mdept;

public class MdeptDAO {
	//增加新的科室
	public int save(Mdept m) throws Exception{
		String sql = "insert into mdept values(deptid.nextval,?)";
		Object []params = {
				m.getDname()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//删除科室 
	public int delete(Mdept m) throws Exception{
		String sql = "delete from mdept where deptid = ?";
		Object []params={
				m.getDeptid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	
	//通过ID删除科室 
		public int deleteById(int deptid) throws Exception{
			String sql = "delete from mdept where deptid = ?";
			Object []params={
					deptid
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
	public int getTotal() throws Exception{
		String sql=" select count(*) from Mdept ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//查询科室表 分页查询 查询出全部信息 
	public List<Mdept> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,m.* from mdept m) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new MdeptMapper();
		DBManager db = new DBManager();
		List<Mdept> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//查询科室表 查询出全部信息 @岳晨
		public List<Mdept> findAll() throws Exception{
			String sql = " select *from mdept ";
			IMapper mapper = new MdeptMapper();
			DBManager db = new DBManager();
			List<Mdept> list = db.executeQueryObjectList(sql, null, mapper);
			return list;
		}
	//修改科室信息 通过科室ID,获取科室信息 并修改
	public int merge(Mdept m) throws Exception{
		String sql=" update mdept set dname=? where deptid=? ";
		Object []params={
				m.getDname(),
				m.getDeptid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//通过科室名 直接查询该科室的所有信息  @岳晨
	public Mdept findByName(String dname) throws Exception{
		String sql="select *from mdept where dname=?";
		Object []params={
				dname
		};
		IMapper mapper=new MdeptMapper();
		DBManager db=new DBManager();
		List<Mdept> list=db.executeQueryObjectList(sql, params, mapper);
		Mdept d=list.get(0);
		return d;
	}
	//通过科室ID 直接查询该科室的所有信息 
	public Mdept findById(int deptid) throws Exception{
		String sql="select *from mdept where deptid=?";
		Object []params={
				deptid
		};
		IMapper mapper=new MdeptMapper();
		DBManager db=new DBManager();
		List<Mdept> list=db.executeQueryObjectList(sql, params, mapper);
		Mdept d=list.get(0);
		return d;
	}

}
